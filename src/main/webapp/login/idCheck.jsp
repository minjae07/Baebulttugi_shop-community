<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	boolean idExist = (boolean)request.getAttribute("idExist");	
	String memberId = (String)request.getAttribute("memberId");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#idCheckArea{
		width : 350px;
		border : 1px solid black;
		margin: auto;
		text-align: center;
	}
	h1{
		text-align:center;		 		
	}
</style>
<script>
	function confirmCheckId(){
		opener.document.registForm.memberId.value = '<%=memberId%>';
		window.close();
		
		//자기자신을 가리키는 메소드. self.close(); 자기자신창을닫음
		//close();		
	}
</script>
</head>
<body>
<section id = "idCheckArea">
<%
	if(idExist){
%>
<h1>새로운 아이디 입력</h1>
<form action="idCheck.me">
	<label for = "memberId">아이디 : </label>
	<input type = "text" name = "memberId" id="memberId"><br>
	<input type = "submit" value = "전송">
</form>
<%
	}
	else{
%>
	<h1>사용 가능한 아이디입니다.</h1>
	<a href="javascript:confirmCheckId()" style = "text-align: center">확인</a>
<%
	}
%>
</section>
</body>
</html>