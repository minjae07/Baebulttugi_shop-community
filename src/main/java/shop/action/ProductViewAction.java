package shop.action;

import javax.servlet.http.Cookie; 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shop.service.ProductViewService;
import vo.ActionForward;
import shop.vo.ProductVO;

public class ProductViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		
		ProductViewService productViewService = new ProductViewService();
		ProductVO productVO = productViewService.getProduct(id);
		
		Cookie cookie = new Cookie("today" + id, productVO.getProductImage());
		//쿠키객체를 생성하면 기본적으로 생존기간이 -1로 설정됨
		//즉, 브라우저가 실행 중에는 쿠키객체가 유지되지만 브라우저를 종료하면 
		//쿠키가 즉시 소멸되는 생존기간
		cookie.setMaxAge(60 * 60 * 24); //단위는 초단위
		response.addCookie(cookie);
		
		
		request.setAttribute("productVO",productVO);
		
		ActionForward forward = new ActionForward();
		forward.setUrl("productView.jsp");
		return forward;
	}

}
