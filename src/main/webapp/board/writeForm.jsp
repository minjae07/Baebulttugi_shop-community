<%@page import="vo.ReplyVO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/view/color.jsp"%>
<html>
<head>
<title>'배불뚝이'-산모를 위한 사이트</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>

<%
ReplyVO replyVO = (ReplyVO) request.getAttribute("replyVO");
//getAttribute 메소드의 리턴타입은 Object
int num = replyVO.getNum();
int ref = replyVO.getRef();
int re_step = replyVO.getRe_step();
int re_level = replyVO.getRe_level();
//답변글 처리할때 사용하는 값들
//이런 값들에 의해서 back end 에서 서버에서 원글과 답글을 구분해서 처리함.
%>

<body bgcolor="<%=bodyback_c%>">
	<jsp:include page="/board/boardHeader.jsp"></jsp:include>

	<center>
		<b>게시글 작성</b>
		<form method="post" name="writeform" action="boardWritePro.bo">
			<input type="hidden" name="num" value="<%=num%>">
			<input type="hidden" name="ref" value="<%=ref%>">
			<input type="hidden" name="re_step" value="<%=re_step%>">
			<input type="hidden" name="re_level" value="<%=re_level%>">

			<table width="800" border="1" cellspacing="0" cellpadding="0" bgcolor="<%=bodyback_c%>" align="center">
				<tr>
					<td width=30% bgcolor="<%=value_c%>" align="center">작성자 ID</td>
					<td><input type="text" size=70% maxlength="10" name="writer" placeholder="작성자 ID를 입력하세요"></td>
				</tr>
				<tr>
					<td width=30% bgcolor="<%=value_c%>" align="center">제 목</td>
					<td>
						<%
						if (num == 0) {
						%> <input type="text" size=70% maxlength="50" name="subject">
					</td>
					<%
					} else {
					%>
					<input type="text" size=70% maxlength="50" name="subject" value="[답변]">
					</td>
					<%
					}
					%>
				</tr>
				<tr>
					<td width=30% align="center" bgcolor="<%=value_c%>">이메일</td>
					<td><input type="text" size=40% name="email1"> @ <select name="email2">
							<option value="naver.com" selected >-----선택-----</option>
							<option value="google.com">google.com</option>
							<option value="naver.com">naver.com</option>
							<option value="daum.net">daum.net</option>
							<option value="nate.com">nate.com</option>
					</select></td>
				</tr>
				<tr>
					<td width=30% bgcolor="<%=value_c%>" align="center">내 용</td>
					<td><textarea name="content" rows="13" cols="40"></textarea></td>
				</tr>
				<tr>
					<td width=30% bgcolor="<%=value_c%>" align="center">비밀번호</td>
					<td><input type="password" size="8" maxlength="12" name="passwd"></td>
				</tr>
				<tr>
					<td colspan=2 bgcolor="<%=value_c%>" align="center">
						<input type="submit" value="저장">
						<input type="reset" value="다시작성">
						<input type="button" value="목록보기"	OnClick="window.location='boardList.bo'">
					</td>
				</tr>
			</table>
			<jsp:include page="/board/boardFooter.jsp"></jsp:include>
		</form>
</body>
</html>
