package shop.action;

import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;

import shop.service.CartService;
import vo.ActionForward;

public class ProductCartQtyUpAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		
		CartService cartService = new CartService();
		cartService.upCartQty(request, id);
		
		ActionForward forward = new ActionForward();
		forward.setUrl("productCartList.go");
		forward.setRedirect(true);
		return forward;
	}

}
