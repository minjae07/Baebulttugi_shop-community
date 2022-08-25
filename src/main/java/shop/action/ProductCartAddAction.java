package shop.action;

import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;

import shop.service.CartService;
import shop.service.ProductViewService;
import vo.ActionForward;
import shop.vo.ProductVO;

public class ProductCartAddAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		ProductViewService productViewService = new ProductViewService();
		ProductVO productVO = productViewService.getProductCart(id);
		
		CartService cartService = new CartService();
		cartService.addCart(request, productVO);
		
		ActionForward forward = new ActionForward();
		forward.setUrl("productCartList.go");
		forward.setRedirect(true);
		
		return forward;
	}

}
