package shop.action;

import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;

import shop.service.CartService;
import vo.ActionForward;

public class ProductCartQtyDownAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));

		CartService cartService = new CartService();
		cartService.downCartQty(request, id);

		ActionForward forward = new ActionForward();
		forward.setUrl("shopCartList.go");
		forward.setRedirect(true);
		return forward;
	}

}
