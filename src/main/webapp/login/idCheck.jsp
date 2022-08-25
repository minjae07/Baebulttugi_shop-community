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
	function noSpaceForm(obj) { // 공백사용못하게
	    var str_space = /\s/;  // 공백체크
	    if(str_space.exec(obj.value)) { //공백 체크
	        //alert("해당 항목에는 공백을 사용할수 없습니다.\n\n공백은 자동적으로 제거 됩니다.");
	        obj.focus();
	        obj.value = obj.value.replace(/\s| /gi,''); // 공백제거
	        return false;
	    }
	}
</script>
</head>
<body>
<section id = "idCheckArea">
<%
	if(idExist){
%>
<h1>다른 아이디를 입력해주세요</h1>
<form action="idCheck.me">
	<label for = "memberId">아이디 : </label>
	<input type = "text" name = "memberId" id="memberId" onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);"><br>
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