 package shop.dao;
 
 import java.sql.*;  
import static db.JdbcUtil.*;
 import java.util.*;

import shop.vo.ProductVO;
 
 public class ProductDAO {
    private Connection con;
 	private static ProductDAO instance = new ProductDAO();
    
    public static ProductDAO getInstance() {
        return instance;
    }
    
    private ProductDAO() {
    }
    
    //기존 getConnection() 지우고 생성한 메소드
    public void setConnection(Connection con) {
		// TODO Auto-generated method stub
		this.con = con;
	}

	public ArrayList<ProductVO> selectProductList() {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ProductVO> productList = null;
		String sql = "SELECT * FROM product";
		
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				//조회된 레코드가 하나라도 있으면...
				productList = new ArrayList<ProductVO>();
				ProductVO productVO = null;
				
				do {
					productVO = new ProductVO();
					productVO.setProductContent(rs.getString("ProductContent"));
					productVO.setProductId(rs.getInt("ProductId"));
					productVO.setProductImage(rs.getString("productImage"));
					productVO.setProductKind(rs.getString("productKind"));
					productVO.setProductPrice(rs.getInt("productPrice"));
					productVO.setProductReadCount(rs.getInt("productReadCount"));
					productVO.setProductCategory(rs.getString("productCategory"));
					
					productList.add(productVO);
					
				} while (rs.next());
			}
			
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally {
			close(rs);
			close(pstmt);
		}
		return productList;
	}

	public ProductVO selectProduct(int id) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProductVO productVO = null;
		String sql = "";
		
		try {
			sql = "UPDATE product SET productReadCount = productReadCount + 1 WHERE productId = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, id);
			int updateCount = pstmt.executeUpdate();
			if(updateCount > 0) {
				commit(con);
			}
			else {
				rollback(con);
			}
			
			sql = "SELECT * FROM product WHERE productId = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				//조회된 레코드가 하나라도 있으면...
				productVO = new ProductVO();
				productVO.setProductContent(rs.getString("productContent"));
				productVO.setProductId(rs.getInt("productId"));
				productVO.setProductImage(rs.getString("productImage"));
				productVO.setProductKind(rs.getString("productKind"));
				productVO.setProductPrice(rs.getInt("productPrice"));
				productVO.setProductReadCount(rs.getInt("productReadCount"));
				productVO.setProductCategory(rs.getString("productCategory"));
			}
			
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally {
			close(rs);
			close(pstmt);
		}
		return productVO;
	}

	public ProductVO selectProductCart(int id) {
		// TODO Auto-generated method stub
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProductVO productVO = null;
		String sql = "";
		
		try {
			
			sql = "SELECT * FROM product WHERE productId = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				//조회된 레코드가 하나라도 있으면...
				productVO = new ProductVO();
					productVO.setProductContent(rs.getString("productContent"));
					productVO.setProductId(rs.getInt("productId"));
					productVO.setProductImage(rs.getString("productImage"));
					productVO.setProductKind(rs.getString("productKind"));
					productVO.setProductPrice(rs.getInt("productPrice"));
					productVO.setProductReadCount(rs.getInt("productReadCount"));
					productVO.setProductCategory(rs.getString("productCategory"));
			}
			
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally {
			close(rs);
			close(pstmt);
		}
		return productVO;
	}

	public int insertProduct(ProductVO productVO) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		int insertCount = 0;
		String sql = "INSERT INTO product(productId,productKind,"
				+ "productPrice,productImage,"
				+ "productContent,productCategory,productReadCount) "
				+ "VALUES(product_seq.nextval,?,?,?,?,?,0)";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, productVO.getProductKind());
			pstmt.setInt(2, productVO.getProductPrice());
			pstmt.setString(3, productVO.getProductImage());
			pstmt.setString(4, productVO.getProductContent());
			pstmt.setString(5, productVO.getProductCategory());
			insertCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally {
				close(pstmt);
		}
		return insertCount;
	}
 
 }
 
 
 
 
 
 
 