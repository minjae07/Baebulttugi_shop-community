package shop.controller;

import java.io.IOException;  

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shop.action.Action;
import shop.action.ProductCartAddAction;
import shop.action.ProductCartListAction;
import shop.action.ProductCartQtyDownAction;
import shop.action.ProductCartQtyUpAction;
import shop.action.ProductCartRemoveAction;
import shop.action.ProductListAction;
import shop.action.ProductRegistAction;
import shop.action.ProductViewAction;
import vo.ActionForward;

/**
 * Servlet implementation class DogFrontController
 */
@WebServlet("*.go")
public class ProductFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//1. 요청 파악
		String requestURI = request.getRequestURI();
		//http://localhost:8088/project/boardWriteForm.bo
		// /project/boardWriteForm.bo
		//length : 1
		//index : 0
		String contextPath = request.getContextPath();
		// /project
		
		String command = requestURI.substring(contextPath.length());
		// /boardWriteForm.bo
		
		//2. 각 요청처리
		Action action = null;
		ActionForward forward = null;
		
		if(command.equals("/product/productList.go")) {
			action = new ProductListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(command.equals("/product/productView.go")) {
			action = new ProductViewAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(command.equals("/product/productCartAdd.go")) {
			action = new ProductCartAddAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(command.equals("/product/productCartList.go")) {
			action = new ProductCartListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(command.equals("/product/productCartQtyUp.go")) {
			action = new ProductCartQtyUpAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(command.equals("/product/productCartQtyDown.go")) {
			action = new ProductCartQtyDownAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(command.equals("/product/productCartRemove.go")) {
			action = new ProductCartRemoveAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(command.equals("/product/productRegist.go")) {
			action = new ProductRegistAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		//3. 포워딩
		if(forward != null) {
			//요청처리가 제대로 되었으면...
			
			if(forward.isRedirect()) {
				response.sendRedirect(forward.getUrl());
			}
			else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getUrl());
				dispatcher.forward(request, response);
			}
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
