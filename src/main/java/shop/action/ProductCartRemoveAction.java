package shop.action;

import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;

import shop.service.CartService;
import vo.ActionForward;

public class ProductCartRemoveAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		String[] deleteIdArray = 
				request.getParameterValues("delete1"); 
		
		CartService cartService = new CartService();
		cartService.removeCart(request, deleteIdArray);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setUrl("productCartList.go");
		return forward;
	}

}
