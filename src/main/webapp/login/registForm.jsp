<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	#registFormArea{
	width : 800px;
	margin : auto;
	border : 1px dotted green;
	}
	h1{
		text-align: center;
	}
	table{
		width : 780px;
		margin : auto;
		text-align: center;
	}
	#memberZipCode{
		width : 100px;
	}
	.td_left{
		width : 200px;
		text-align: right;
	}
	.td_right{
		width : 780px;
		text-align: left;
	}	
</style>
<style>
.star {
	color: red;
	font-size: 12px;
	font-style: italic;
}
</style>
<script type="text/javascript">
function openZipSearch() {
    new daum.Postcode({
        oncomplete: function(data) {
        	  $('[name=memberZipCode]').val(data.zonecode); // 우편번호 (5자리)
              $('[name=memberAddr1]').val(data.address);
              $('[name=memberAddr2]').val(data.buildingName);
        }
      }).open();
    }
</script>
<script>
	function checkId(){
		//var memberId = document.registForm.memberId;
		var memberId = document.getElementById("memberId");
		
		window.open("idCheck.me?memberId=" + memberId.value, "idCheckWindow", "width=400,height=300" );
	}
/* 	function searchZipCode() {
		window.open("zipSearch.jsp" ,"zipSerchWindow", "width=400,height=300" );
	} */
	function checkPassword(){
		var passwd1 = document.getElementById("memberPassword1");
		var passwd2 = document.getElementById("memberPassword2");
		var errorMessage = document.getElementById("errorMessage");
		if(memberPassword1.value != memberPassword2.value){
			errorMessage.innerHTML = "<font color = 'red'>Password invalid!!</font>";
		}
		else{
			errorMessage.innerHTML = "";
		}
	}
	
</script>

<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>

	<section id = "registFormArea">
		<h1>회원 등록</h1>
		<form action="memberRegist.me" method="POST" name = "registForm">
		<table border="1" weigth="600" align="center" cellspacing="0">
				<tr>
					<th colspan="5" weight="600" align="center" bgcolor="#F6E1CE"><span
						class="star">(*필수입력) </span>회원 기본 정보</th>
				</tr>

			<tr>
				<td class = "td_left"><label for = "memberId"  class="star">* </label> <label>회원아이디 :</label></td>
				<td class = "td_right"><input type="text" name="memberId" id = "memberId" 
				required="required" placeholder="아이디" /><input type = "button" 
				value ="아이디 중복체크" onclick = "checkId()"/></td>
			</tr>
			<tr>
				<td class = "td_left"><label for = "memberName" class="star">* </label> <label>회원이름 :</label></td>
				<td class = "td_right"><input type="text" name="memberName" id = "memberName" 
				required="required" placeholder="이름" />
			</tr>
			<tr>
				<td class = "td_left"><label for = "memberEmail" class="star">* </label> <label>회원이메일 :</label></td>
				<td class = "td_right"><input type="email" name="memberEmail" id = "memberEmail" 
				required="required" placeholder="이메일" />
			</tr>
			<tr>
				<td class = "td_left"><label for = "memberPasswd1" class="star">* </label> <label>비밀번호 :</label></td>
				<td class = "td_right"><input type="password" name="memberPasswd1" id = "memberPasswd1" 
				 /></td>			
			</tr>
			<tr>
				<td class = "td_left"><label for = "memberPasswd2" class="star">* </label> <label>비밀번호확인 :</label></td>
				<td class = "td_right"><input type="password" name="memberPasswd2" id = "memberPasswd2" 
				 onblur = "checkPassword()"/><input type = "button" 
				value ="비밀번호 확인" onclick = "checkPw()"/></td>	
			</tr>
			
			
			
			
			<tr>
				<td class = "td_left"><label for = "memberAge">회원나이 :</label></td>
				<td class = "td_right"><input type="NUMBER" name="memberAge" id = "memberAge" 
				required="required" placeholder="나이" />
			</tr>
			
					<tr>
				<td class = "td_left"><label for = "memberZipCode" class="star">* </label> <label>우편번호 :</label></td>
				<td class = "td_right"><input type="text" name="memberZipCode" id = "memberZipCode" 
				readonly="readonly" /><input type = "button" value="우편번호 검색" 
				onclick="openZipSearch()"/></td>				
			</tr>
			<tr>
				<td class = "td_left"><label for = "memberAddr1" class="star">* </label> <label> 기본주소 :</label></td>
				<td class = "td_right"><input type="text" name="memberAddr1" id = "memberAddr1" 
				readonly="readonly" /></td>				
			</tr>
			<tr>
				<td class = "td_left"><label for = "memberAddr2"class="star">* </label> <label> 상세주소 :</label></td>
				<td class = "td_right"><input type="text" name="memberAddr2" id = "memberAddr2" 
				 /></td>				
			</tr>	
			
				<td class = "td_left"><label for = "memberTel" class="star">* </label> <label>전화번호 :</label></td>
				<td class = "td_right"><input type="text" name="memberTel" id = "memberTel" 
				 /></td>			
			</tr>
			<tr>
				<td class = "td_left"><label for = "memberGender1">성별 :</label></td>
				<td class = "td_right">
				<input type = "radio" name = "memberGender" value = "M"/>남자
				<input type = "radio" name = "memberGender" value = "F" checked = "checked"/>여자</td>				 
			</tr>
			<tr>
				<td class = "td_left"><label for = "memberCountry">좌우명 :</label></td>
				<td class = "td_right"><input type="text" name="memberCountry" id = "memberCountry" 
				 /></td>			
			</tr>
			
			<tr>
				<td colspan = "2"><span id = "errorMessage"></span></td>
			</tr>
			<tr>
				<td colspan = "2" style = "text-align: center">
					<input type ="submit" value = "회원등록" />
				</td>
							
			</tr>
		</table>
		</form>
	</section>
	
</body>
</html>