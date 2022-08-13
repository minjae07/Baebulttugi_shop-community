package action;

import java.io.PrintWriter;
import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardWriteProService;
import vo.ActionForward;
import vo.BoardVO;

//넓은 의미의 Controller
public class BoardWriteProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		BoardVO article = new BoardVO();
		//DTO BoardDTO boardDTO = new BoardDTO();로 이름을 바꿔도 된다.
		article.setContent(request.getParameter("content"));
		article.setEmail1(request.getParameter("email1"));
		article.setEmail2(request.getParameter("email2"));
		article.setNum(Integer.parseInt(request.getParameter("num")));
		article.setPasswd(request.getParameter("passwd"));
		article.setRe_level(Integer.parseInt(request.getParameter("re_level")));
		article.setRe_step(Integer.parseInt(request.getParameter("re_step")));
		article.setReadcount(0);
		article.setRef(Integer.parseInt(request.getParameter("ref")));
		article.setReg_date(new Timestamp(System.currentTimeMillis()));
		article.setSubject(request.getParameter("subject"));
		article.setWriter(request.getParameter("writer"));

		BoardWriteProService boardWriteProService = new BoardWriteProService();
		
		boolean registSuccess = boardWriteProService.registArticle(article);
		
		ActionForward forward = null;
		
		if(registSuccess) {
			forward = new ActionForward();
			forward.setUrl("boardList.bo");
			forward.setRedirect(true);
		}
		else {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('등록실패')");
			out.println("history.back();");
			out.println("</script>");
		}
		return forward;
	}

}
