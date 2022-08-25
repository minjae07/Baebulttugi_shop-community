package shop.service;

import java.sql.Connection; 
import java.util.ArrayList;

import shop.dao.ProductDAO;

import static db.JdbcUtil.*;
import shop.vo.ProductVO;

public class ProductListService {

	public ArrayList<ProductVO> getProductList() {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		ProductDAO productDAO = ProductDAO.getInstance();
		productDAO.setConnection(con);
		
		ArrayList<ProductVO> productList = productDAO.selectProductList();
		close(con);
		return productList;
	}

}
