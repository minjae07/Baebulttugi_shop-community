package shop.action;

import java.io.PrintWriter;  

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import shop.service.ProductRegistService;
import vo.ActionForward;
import shop.vo.ProductVO;

public class ProductRegistAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		String realFolder = "";//웹 어플리케이션상의 절대 경로

		//파일이 업로드되는 폴더를 지정한다.
		String saveFolder = "/product/images";
		String encType = "UTF-8"; //엔코딩타입
		int maxSize = 5*1024*1024;  //최대 업로될 파일크기 5Mb

		ServletContext context = request.getServletContext();
		//애플리케이션 당 하나씩 생성되는 환경설정정보

		//현재 jsp페이지의 웹 어플리케이션상의 절대 경로를 구한다
		realFolder = context.getRealPath(saveFolder);  
		MultipartRequest multi = null;
		   
		   //전송을 담당할 콤포넌트를 생성하고 파일을 전송한다.
		   //전송할 파일명을 가지고 있는 객체, 서버상의 절대경로,최대 업로드될 파일크기, 문자코드, 기본 보안 적용
		   multi = new MultipartRequest(request,realFolder,maxSize,encType,
				   new DefaultFileRenamePolicy());
		ProductVO productVO = new ProductVO();
		productVO.setProductContent(multi.getParameter("productContent"));
		String productImageFileStr = multi.getFilesystemName("productImage");
		int index = productImageFileStr.indexOf(".");
		String productImage = productImageFileStr.substring(0, index);
		productVO.setProductImage(productImage);
		productVO.setProductKind(multi.getParameter("productKind"));
		productVO.setProductPrice(Integer.parseInt(multi.getParameter("productPrice")));
		productVO.setProductCategory(multi.getParameter("productCategory"));
		
	    ProductRegistService productRegistService = new ProductRegistService();
	    boolean registSuccess = productRegistService.registProduct(productVO);
	    
	    ActionForward forward = null;
	    if(registSuccess) {
	    	forward = new ActionForward();
	    	forward.setRedirect(true);
	    	forward.setUrl("productList.go");
	    }
	    else {
	    	response.setContentType("text/html;charset=UTF-8");
	    	PrintWriter out = response.getWriter();
	    	out.println("<script>");
	    	out.println("alert('등록실패')");
	    	out.println("history.back()");
	    	out.println("</script>");
	    }
		return forward;
	}

}







