package shop.service;

import static db.JdbcUtil.*;  

import java.sql.Connection;

import shop.dao.ProductDAO;
import shop.vo.ProductVO;

public class ProductViewService {

	public ProductVO getProduct(int id) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		ProductDAO productDAO = ProductDAO.getInstance();
		productDAO.setConnection(con);
		
		//dogDAO.updateReadCount(id)
		//commit(con);
		
		ProductVO productVO = productDAO.selectProduct(id);
		close(con);
		return productVO;
	}

	public ProductVO getProductCart(int id) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		ProductDAO productDAO = ProductDAO.getInstance();
		productDAO.setConnection(con);
		ProductVO productVO = productDAO.selectProductCart(id);
		close(con);
		return productVO;
	}

}
