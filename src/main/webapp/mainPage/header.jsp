<%@ page import="login.vo.MemberVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%
   String loginId=(String)session.getAttribute("loginId");  
  %>
  <% 
  MemberVO mb = (MemberVO) request.getAttribute("Member");
  %>
   
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-----메뉴---->
   <div>
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
         <div class="container-fluid">
            <a class="navbar-brand" href="mainPage.html"><img class="logo" src="board/images/logo.png" /></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor03"
               aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarColor03">
               <ul class="navbar-nav me-auto">
                  <li class="nav-item"> <a class="nav-link active" href="#사이트설명">사이트 설명 </a></li>
                  <li class="nav-item"><a class="nav-link" href="#개발배경">개발배경</a></li>
                  <li class="nav-item"><a class="nav-link" href="#업데이트정보">업데이트 정보</a></li>
                  <li class="nav-item"><a class="nav-link" href="#개발자정보">개발자정보</a></li>
                  <li class="nav-item dropdown"><a
                     class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">사이트 링크</a>
                     <div class="dropdown-menu">
                        <a class="dropdown-item" >모아보기</a> <a
                           class="dropdown-item" >쇼핑몰</a> <a
                           class="dropdown-item" href="boardList.bo">커뮤니티</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">미정</a>
                     </div></li>
               </ul>
                    <!--      로그인          -->
	<%  if(loginId != null){%>

	<p><%=request.getParameter("memberName") %> </p>
		<a href = "mainPage/myPage.jsp">내정보보기</a>
		<a href = "login/logout.me">로그아웃</a>
		
	<% } 
	else {%>
		<a href = "login/loginForm.html">로그인</a>
		<a href = "login/registForm.html">회원가입</a>
		
		
	<%
	}
	%>
 
    
            </div>
         </div>
      </nav>
   </div>
                    
</body>
</html>