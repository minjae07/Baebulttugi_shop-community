package service;

import vo.BoardVO;
import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.BoardDAO;
public class BoardUpdateFormService {

	public BoardVO getUpdateArticle(int num) throws Exception {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		
		BoardVO article = boardDAO.selectUpdateArticle(num);
		close(con);
		return article;
	}

}
