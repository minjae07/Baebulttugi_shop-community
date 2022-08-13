<%@page import="login.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
<h1>로그인에 성공한 사용자 정보</h1>
	<b> 사용자 이름 : </b>${requestScope.memberName }<br>
	<b> 사용자 이메일 : </b>${requestScope.memberEmail }<br>
	<b> 사용자 주소 : </b>${requestScope.loginMember.memberAddr1 }+${loginMember.memberAddr2 }<br>
	<b> 사용자 전화번호 : </b>${requestScope.loginMember.memberTel }<br>
</body>
</html>