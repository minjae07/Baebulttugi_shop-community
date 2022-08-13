package login.action;

import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import vo.ActionForward;
import action.Action;

public class MemberLogoutAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = null;
		HttpSession session =  request.getSession();
	    session.invalidate();
	    //response.sendRedirect("index.jsp");
		forward = new ActionForward();
		forward.setUrl("index.jsp");
		forward.setRedirect(true);
				
		return forward;
	}
}
