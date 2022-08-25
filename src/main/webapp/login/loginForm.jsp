<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 #loginFormArea{
     margin : auto;
      width : 400px;
      height : 200px;
      border : 3px double brown;
 }
 h1{
    text-align: center;
 }
 fieldset{
    text-align: center;
    border : none;
 }
 input[type="submit"]{
    margin-top: 15px;
 }
</style> 
</head> 
<body> 
	<section id = "loginFormArea">

		<h1> 로그인</h1>
			<form action = "login.me" method="POST">
			<fieldset>
			<label for ="id"> 아이디:</label>
			<input type = "text" name="id" id="id"  > <br>
			
			<label for ="passwd"> 비밀번호:</label>
			<input type = "text" name="passwd" id="passwd"  > <br>
			
			<!-- 
			<label for ="cookieUse"> 쿠키사용:</label>
			<input type = "checkbox" name="cookieUse" id="cookieUse"  > <br>
		 -->
			<input type = "submit" value = "로그인">
			</fieldset>
			</form>
	</section>
</body>
</html>