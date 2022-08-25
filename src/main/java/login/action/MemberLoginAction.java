package login.action;

import java.io.PrintWriter;  

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import login.service.MemberLoginService;
import vo.ActionForward;
import action.Action;

public class MemberLoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		
		MemberLoginService memberLoginService = new MemberLoginService();
		
		boolean loginSuccess = memberLoginService.login(id,passwd);
		ActionForward forward = null;
		
		if(loginSuccess) {
			HttpSession session = request.getSession();
			session.setAttribute("loginId",id);
			forward = new ActionForward();
			forward.setUrl("index.jsp");
			forward.setRedirect(true);
		}else {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('로그인실패')");
			out.println("history.back()");
			out.println("</script>");
		}
		return forward;
	}

}
