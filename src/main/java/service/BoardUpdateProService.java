package service;

import vo.BoardVO;
import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.BoardDAO;
public class BoardUpdateProService {

	public boolean modifyArticle(BoardVO article) throws Exception {
		// TODO Auto-generated method stub
		boolean modifySuccess = false;
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		
		int updateCount = boardDAO.updateArticle(article);
		
		if(updateCount > 0) {
			commit(con);
			modifySuccess = true;
		}
		else {
			rollback(con);
		}
		close(con);
		return modifySuccess;
	}

}
