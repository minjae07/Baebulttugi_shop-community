package login.service;

import static db.JdbcUtil.*; 

import java.sql.Connection;

import login.dao.MemberDAO;

public class MemberLoginService {

	public boolean login(String id, String passwd) {
		// TODO Auto-generated method stub
		boolean loginSuccess = false;
		Connection con = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(con);
		
		String loginId = memberDAO.selectLoginId(id,passwd);
		if(loginId!=null) {
			loginSuccess =true;
		}
		
		return loginSuccess;
	}

}
