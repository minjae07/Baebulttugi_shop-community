<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원가입창</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/memberJoin.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
function openZipSearch() {
    new daum.Postcode({
        oncomplete: function(data) {
        	  $('[name=zip]').val(data.zonecode); // 우편번호 (5자리)
              $('[name=addr1]').val(data.address);
              $('[name=addr2]').val(data.buildingName);
        }
      }).open();
    }
</script>
<!-- <script>
function ssnCheck(_ssn1, _ssn2)
{
    var ssn1    = _ssn1,
        ssn2    = _ssn2,
        ssn     = ssn1+''+ssn2,
        arr_ssn = [],
        compare = [2,3,4,5,6,7,8,9,2,3,4,5],
        sum     = 0;
 
    // 입력여부 체크
    if (ssn1 == '')
    {
        alert('주민등록번호를 기입해주세요.');
        return false;
    }
 
    if (ssn2 == '')
    {
        alert('주민등록번호를 기입해주세요.');
        return false;
    }    
 
    // 입력값 체크
    if (ssn1.match('[^0-9]'))
    {
        alert("주민등록번호는 숫자만 입력하셔야 합니다."); 
        return false; 
    }
    if (ssn2.match('[^0-9]'))
    {
        alert("주민등록번호는 숫자만 입력하셔야 합니다."); 
        return false; 
    }
 
    // 자리수 체크
    if (ssn.length != 13)
    {
        alert("올바른 주민등록 번호를 입력하여 주세요.");return false;
    }    
 
 
    // 공식: M = (11 - ((2×A + 3×B + 4×C + 5×D + 6×E + 7×F + 8×G + 9×H + 2×I + 3×J + 4×K + 5×L) % 11)) % 10
    for (var i = 0; i<13; i++) 
    { 
        arr_ssn[i] = ssn.substring(i,i+1); 
    }
    
    for (var i = 0; i<12; i++)
    {
        sum = sum + (arr_ssn[i] * compare[i]); 
    }
 
    sum = (11 - (sum % 11)) % 10;
    
    if (sum != arr_ssn[12])
    { 
        alert("올바른 주민등록 번호를 입력하여 주세요.");
        return false; 
    }
 
    return true;
}
 
ssnCheck('830422', '1185600');
</script>-->
<style>
.star {
	color: red;
	font-size: 12px;
	font-style: italic;
}

@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);

.body {
	font-family: 'Jeju Gothic', serif;
}
</style> 
<script>
function checkId(){
	//var memberId = document.registForm.memberId;
	var memberId = document.getElementById("memberId");
	
	window.open("idCheck.me?memberId=" + memberId.value, "idCheckWindow", "width=400,height=300" );
}
function searchZipCode() {
	window.open("zipSearch.jsp" ,"zipSerchWindow", "width=400,height=300" );
}
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
</head>
<body>
	<section id="registFormArea">
		<form action="memberRegist.me" method="POST" name="registForm">
			<div>
				<h1>
					회원 가입
				</h1>
			</div>
			<table border="1" weigth="600" align="center" cellspacing="0">
				<tr>
					<th colspan="5" weight="600" align="center" bgcolor="#F6E1CE"><span
						class="star">(*필수입력) </span>회원 기본 정보</th>
				</tr>

				<tr>
					<td align="center"><b><label for="memberId" class="star">*
						</label>아이디 : </b></td>
					<td colspan="5"><input type="text" name="memberId"
						id="memberId" required="required" placeholder="아이디" /><input
						type="button" value="아이디 중복체크" onclick="checkId()" /></td>
				</tr>

				<tr weight="800">
					<td align="center"><b><span id="id" class="star">*
						</span>이름:<b></td>
					<td colspan="5"><input type="text" name="memberName"
						id="memberName" required="required" placeholder="이름" />
				</tr>
				<tr>
					<td align="center"><b><label for="memberPasswd1" class="star">* </label>비밀번호:<b></td>
					<td colspan="5"><input type="password" name="memberPasswd1"
						id="memberPasswd1" /></td>
				</tr>
				<tr>
					<td align="center"><b style="font-size: 10pt"><label
							for="memberPasswd2" class="star">* </label>비밀번호확인:<b></td>
					<td colspan="5"><input type="password" name="memberPasswd2"
						id="memberPasswd2" onblur="checkPassword()" /></td>
				</tr>
				<tr>
					<td align="center"><span style="font-weight: bold"><label
							for="memberEmail" class="star">* </span>메일주소:</td>
					<td colspan="5"><input type="email" name="memberEmail"
						id="memberEmail" required="required" placeholder="이메일" /> 예)
						id@domain.com</td>
				</tr>
				<tr>
				<td class = "td_left"><label for = "memberAge">회원나이 :</label></td>
				<td class = "td_right"><input type="NUMBER" name="memberAge" id = "memberAge" 
				required="required" placeholder="나이" />
			</tr>
			<tr rowspan="3"><label for = "memberZipCode"></label>
					<td align="center"><b>주소 :</b></td>
					<td colspan="5"><script
							src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
						<input type="text" name="memberZipCode "  id = "memberZipCode"  style="width: 80px; height: 20px;" />
						<button type="button" style="width: 100px; height: 26px;"
							onclick="openZipSearch()">우편번호 찾기</button>
						<br> <input type="text" name="memberZipCode1"
						style="width: 200px; height: 20px;" readonly /> <input
						type="text" name="memberZipCode2" style="width: 200px; height: 20px;" /></td>
				</tr>
</tr>
			
				<td class = "td_left"><label for = "memberTel">전화번호 :</label></td>
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
				<td class = "td_left"><label for = "memberCountry">나도 한마디 :</label></td>
				<td class = "td_right"><input type="text" name="memberCountry" id = "memberCountry" 
				 /></td>			
			</tr>
			
			<tr>
				<td colspan = "2"><span id = "errorMessage"></span></td>
			</tr>
			
					<th align="center" colspan="5" bgcolor="#F6E1CE">회원 정보 (예약주문시
						필요)</th>
				</tr>
				<!-- <tr>
					<td align="center"><b><span id="birth" class="star">*
						</span>주민등록번호 :<b></td>
					<td colspan="5"><input type="text" id="_ssn1" value=""
						maxlength="6" size="8" required /> -</input> <input type="password"
						id="_ssn2" value="" maxlength="7" size="8" required /></input> <input
						type="button" name="" value="확인" onclick="ssnCheck()"><br>
						예) 123456-1234567</td>
				</tr>
				<tr>
					<td align="center"><b>생일 :<b></td>
					<td colsapn="5">
					<td><input type="text" style="width: 80px" id="years" readonly />년
						<input type="text" style="width: 50px" id="month" readonly />월 <input
						type="text" style="width: 50px" id="day" readonly />일</td>
				<tr>
					<td align="center"><span style="font-weight: bold"><span
							id="phone" class="star">* </span>휴대폰 번호: </td>
					<td colspan="5"><input type='tel' name='phone1' value=""
						size="8" required />- <input type='tel' name='phone2' value=""
						size="8" required />- <input type='tel' name='phone3' value=""
						size="8" required /> 예) 010-0000-0000</td>
				</tr>

				
			</table>
			<br> <input type="submit" name="join" value="회원 가입"
				align="middle"> <input type="reset" name="reset"
				value="다시 입력" align="center">

		</form> -->
		<tr>
				<td colspan = "2" style = "text-align: center">
					<input type ="submit" value = "회원등록" />
				</td>
							
			</tr>
				<tr>
</body>
</html>