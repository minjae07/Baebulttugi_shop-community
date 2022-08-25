package shop.service;

import shop.vo.ProductVO; 
import static db.JdbcUtil.*;

import java.sql.Connection;

import shop.dao.ProductDAO;
public class ProductRegistService {

	public boolean registProduct(ProductVO productVO) {
		// TODO Auto-generated method stub
		boolean registSuccess = false;
		Connection con = getConnection();
		ProductDAO productDAO = ProductDAO.getInstance();
		productDAO.setConnection(con);
		
		int insertCount = productDAO.insertProduct(productVO);
		if(insertCount > 0) {
			commit(con);
			registSuccess = true;
		}
		else {
			rollback(con);
		}
		close(con);
		return registSuccess;
	}

}
