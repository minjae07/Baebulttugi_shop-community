package shop.action;

import java.util.ArrayList; 

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shop.service.CartService;
import vo.ActionForward;
import shop.vo.CartVO;

public class ProductCartListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		CartService cartService = new CartService();
		ArrayList<CartVO> cartList = cartService.getCartList(request);
		int totalMoney = 0;
		
		if(cartList != null) {
		for (int i = 0; i < cartList.size(); i++) {
			totalMoney += cartList.get(i).getProductPrice() * cartList.get(i).getProductQty();
		}
		}
		
		request.setAttribute("totalMoney", totalMoney);
		request.setAttribute("cartList", cartList);
		ActionForward forward = new ActionForward();
		forward.setUrl("productCartList.jsp");
		return forward;
	}

}
