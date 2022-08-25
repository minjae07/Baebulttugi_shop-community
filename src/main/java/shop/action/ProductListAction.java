package shop.action;

import java.util.ArrayList; 

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shop.service.ProductListService;
import vo.ActionForward;
import shop.vo.ProductVO;

public class ProductListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ArrayList<String> todayImageList = new ArrayList<String>();
		Cookie[] cookieArray = request.getCookies();
		//request.getCookies() : 클라이언트에서 전달된 쿠키객체들을 반환
		
		if(cookieArray != null) {
			//클라이언트에서 쿠키가 하나라도 전송된 경우
			
			for (int i = 0; i < cookieArray.length; i++) {
				//쿠키정보
				//쿠키이름=쿠키값;만료기간등 정보...
				if(cookieArray[i].getName().startsWith("today")) {
					todayImageList.add(cookieArray[i].getValue());
				}
			}
		}
		
		ProductListService productListService = new ProductListService();
		
		ArrayList<ProductVO> productList = productListService.getProductList();
		request.setAttribute("productList", productList);
		request.setAttribute("todayImageList", todayImageList);
		
		ActionForward forward = new ActionForward();
		/* forward.setUrl("productList.jsp"); */
		 forward.setUrl("productList.jsp"); 
		return forward;
	}

}
