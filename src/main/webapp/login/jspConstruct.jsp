<%@page contentType = "text/html;charset=UTF-8" import = "java.util.Date" buffer = "10kb" %>
<%--
 %@ : 지시자(directive) 영역
 - 클라이언트가 jsp 페이지로 요청을 하면 jsp 페이지는 서블릿에 해당하는 
 자바코드로 변환된 후 컴파일되어 서비스함
  
 - 지시자 영역은 jsp코드가 서블릿으로 변환될 때 변환 정보를 지시하는 영역
 page : 페이지 정보를 제공
 include : 해당 jsp 페이지 다른 jsp코드를 변환하기 전에 삽입하라는 정보
 taglib : JSTL(Jsp Standard Tag Library) 사용 커스텀 태그의 접두사를 지정하는 지시자
--%>

<%!
	public int add(int x, int y){	
	return x+y;
	}
	int memberVar = 10;
%>
<%--
	선언부
	: jsp에서 사용되는 메소드나 멤버변수를 정의하는 부분 
--%>

<%
	int localVar = 20;
	out.println("localVar = "+ localVar);
	//내장객체 : jsp 자체에서 제공하는 객체...
	
%>
<%--
	스크립트릿 : 실질적인 자바로직이 구현되는 부분(for, if등의 연산), 로컬변수가 선언되는 부분	 
--%>

memberVar = <%=memberVar %>
	<%--
	%= : Expression Tag : 자바코드로 변환될 때 out.print()로 변환됨
	 --%>

<!--
HTML 주석
자바코드로 변환될 때 일반 문자열로 변환됨 따라서 클라이언트 페이지에서 소스 보기를 하면 소스 부분에 출력됨 
 -->
	
 <%
 // 자바주석 : 자바코드로 변환될 때 일반 문자열로 변환이 되지만 컴파일이 안되기 때문에 클라이언트로 응답되지 않음
 /*
 */
 %>	
 
  <%--
  JSP 주석 : jsp 페이지가 자바코드로 변환될 때 변환 자체가 안됨
  내장객체, JSP액션태그, JSTL, EL, 쿠키,Session ... + 라이브러리들...
   --%>

	
	