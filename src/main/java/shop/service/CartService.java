package shop.service;

import java.util.ArrayList; 

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import shop.vo.CartVO;
import shop.vo.ProductVO;

public class CartService {

	public void addCart(HttpServletRequest request, ProductVO productVO) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		
		ArrayList<CartVO> cartList = 
				(ArrayList<CartVO>)session.getAttribute("cartList");
		
		if(cartList == null) {
			//첫번째 담는 상품이면
			cartList = new ArrayList<CartVO>();
			session.setAttribute("cartList", cartList);
		}
		
		//장바구니에 상품을 담는다.
		//1. 이미 장바구니 목록에 담겨있는 상품을 다시 장바구니에 담는경우
		//수량만 증가시킴
		//2. 이미 장바구니 목록에 담겨있지 않은 상품을 장바구니에 담는경우
		//새로운 장바구니 항목객체(CartVO)를 생성해서 추가
		
		boolean newCart = true;
		//지금 추가하는 상품이 장바구니에 새로운 항목인지 판단하는 변수
		
		for (int i = 0; i < cartList.size(); i++) {
			if(productVO.getProductId() == cartList.get(i).getProductId()) {
				newCart = false;
				cartList.get(i).setProductQty(cartList.get(i).getProductQty() + 1);
				break;
			}
		}
		
		CartVO cartVO = null;
		if(newCart) {
			cartVO = new CartVO();
			cartVO.setProductId(productVO.getProductId());
			cartVO.setProductImage(productVO.getProductImage());
			cartVO.setProductKind(productVO.getProductKind());
			cartVO.setProductPrice(productVO.getProductPrice());
			cartVO.setProductQty(1);
			cartList.add(cartVO);
		}
	}

	public ArrayList<CartVO> getCartList(HttpServletRequest request) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		
		return (ArrayList<CartVO>)session.getAttribute("cartList");
	}

	public void upCartQty(HttpServletRequest request, int id) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		ArrayList<CartVO> cartList = 
				(ArrayList<CartVO>)session.getAttribute("cartList");
		
		for (int i = 0; i < cartList.size(); i++) {
			if(id == cartList.get(i).getProductId()) {
				cartList.get(i).setProductQty(cartList.get(i).getProductQty() + 1);
			}
		}
	}
	public void downCartQty(HttpServletRequest request, int id) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		ArrayList<CartVO> cartList = (ArrayList<CartVO>)
				session.getAttribute("cartList");
		
		for (int i = 0; i < cartList.size(); i++) {
			if(id == cartList.get(i).getProductId()) {
				cartList.get(i).setProductQty(cartList.get(i).getProductQty() - 1);
			}
		}
	}

	public void removeCart(HttpServletRequest request, String[] deleteIdArray) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		ArrayList<CartVO> cartList = 
				(ArrayList<CartVO>)session.getAttribute("cartList");
		
		for (int i = 0; i < deleteIdArray.length; i++) {
			for (int j = 0; j < cartList.size(); j++) {
				if(Integer.parseInt(deleteIdArray[i]) == cartList.get(j).getProductId()) {
					cartList.remove(cartList.get(j));
				}
			}
		}
		
	}

}












