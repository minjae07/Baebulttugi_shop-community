<%@page import="java.sql.Timestamp"%>
<%@page import="vo.PageVO"%>
<%@ page contentType = "text/html; charset=UTF-8" %>
<%@ page import = "vo.BoardVO" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ include file="/view/color.jsp"%>
<%@ taglib  prefix = "c" 
uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib  prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>
<%!
    SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy-MM-dd HH:mm");
    //2021-01-12 09:17%>
    <% 
  String loginId = (String)session.getAttribute("loginId");
  %>
  

<html>
<head>
<title>'배불뚝이'-산모를 위한 사이트</title>
<link href="style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<style>
	div.table {
  padding:0.5em 20.0em 0em;
  background: #f5f5f5
}

table {
  border: 1px #a39485 solid;
  font-size: .9em;
  box-shadow: 0 2px 5px rgba(0,0,0,.25);
  width: 100%;
  border-collapse: collapse;
  border-radius: 5px;
  overflow: hidden;
}

th {
  text-align: left;
}
  
thead {
  font-weight: bold;
  color: #fff;
  background: #73685d;
}
  
 td, th {
  padding: 1em .5em;
  vertical-align: middle;
}
  
 td {
  border-bottom: 1px solid rgba(0,0,0,.1);
  background: #fff;
}

a {
  color: #73685d;
}
  
 @media all and (max-width: 768px) {
    
  table, thead, tbody, th, td, tr {
    display: block;
  }
  
  th {
    text-align: right;
  }
  
  table {
    position: relative; 
    padding-bottom: 0;
    border: none;
    box-shadow: 0 0 10px rgba(0,0,0,.2);
  }
  
  thead {
    float: left;
    white-space: nowrap;
  }
  
  tbody {
    overflow-x: auto;
    overflow-y: hidden;
    position: relative;
    white-space: nowrap;
  }
  
  tr {
    display: inline-block;
    vertical-align: top;
  }
  
  th {
    border-bottom: 1px solid #a39485;
  }
  
  td {
    border-bottom: 1px solid #e5e5e5;
  }
  
  
  }
div#relative {
  position: relative;
  left: 450px;
  bottom: -25px;
}
	</style>
</head>

<body bgcolor="<%=bodyback_c%>">
<jsp:include page="/board/boardHeader.jsp"></jsp:include>
<%-- <center><b>글목록(전체 글: ${pageVO.count})</b>
			<!-- 헤더 -->

<%  if(loginId != null ){%>
<table width="700">
<tr>
    <td align="right" bgcolor="<%=value_c%>">
    <a href="boardWriteForm.bo">글쓰기</a>
    </td>
</table>
<% } 
	else {%>
		<%
	}
	%>
			
<c:if test="${pageVO.count == 0 }">
<table width="700" border="1" cellpadding="0" cellspacing="0">
<tr>
    <td align="center">
    게시판에 저장된 글이 없습니다.
    </td>
</table>
</c:if>
 --%>
<!-- 테이블 -->
<%-- <c:if test="${pageVO.count != 0 }"> --%>
<!-- <table border="1" width="700" cellpadding="0" cellspacing="0" align="center">  -->
<%--     <tr height="30" bgcolor="<%=value_c%>"> 
      <td align="center"  width="50"  >번 호</td> 
      <td align="center"  width="250" >제   목</td> 
      <td align="center"  width="100" >작성자</td>
      <td align="center"  width="150" >작성일</td> 
      <td align="center"  width="50" >조 회</td>    
    </tr> --%>

   <%-- <c:set var = "number" value = "${pageVO.number }"></c:set>
   <c:forEach var = "article" items = "${articleList }"> --%>
  <%--  <tr height="30">
    <td align="center"  width="50" > ${number }
    <c:set var = "number" value = "${number - 1 }"></c:set>
    </td> --%>
    
   <!--  <td  width="250" > -->

  <%--  <c:set var = "wid" value = "${0}"></c:set>
   <c:if test="${article.re_level > 0 }">
   <c:set var = "wid" value = "${article.re_level * 5}"></c:set>
     <img src="board/images/level.gif" width="${wid }" height="16">
     <img src="board/images/re.gif">
   </c:if>
   <c:if test="${article.re_level == 0 }">
     <img src="board/images/level.gif" width="${wid }" height="16">
   </c:if>
           
    <a href="boardContent.bo?num=${article.num }&pageNum=${pageVO.currentPage}">
           ${article.subject }</a> 
         <c:if test="${article.readcount >= 20 }">
         <img src="images/hot.gif" border="0"  height="16">
         </c:if>
         </td> --%>
    <%-- <td align="center"  width="100"> 
       <a href="mailto:${article.email1 }">
       ${article.writer }</a></td> --%>
  <%--   <td align="center"  width="150">
    
    <fmt:formatDate var="formDate" value = "${article.reg_date}" pattern="yyyy.MM.dd" />
    <c:out value="${formDate}"></c:out>
    </td> --%>
    <%-- <td align="center"  width="50">${article.readcount }
    </td>
  </tr> --%>
 <%--  </c:forEach> --%>
<!-- </table> -->



<div class="relative">
<center><b>글목록(전체 글: ${pageVO.count})</b>
<div>
			<!-- 헤더 -->


			
<c:if test="${pageVO.count == 0 }">
<table width="700" border="1" cellpadding="0" cellspacing="0">
<tr>
    <td align="center">
    게시판에 저장된 글이 없습니다.
    </td>
</table>
</c:if>



<!-- 게시판 -->
<c:if test="${pageVO.count != 0 }">

<div class="table">
<table>
    <thead>
    <tr>
        <th align="center"  width="50"  >&nbsp;&nbsp;번 호</th> 
      <th text-align="center"  width="150" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;제   목</th> 
      <th align="center"  width="100" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;작성자</th>
      <th align="center"  width="150" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;작성일</th> 
      <th align="center"  width="50" >&nbsp;&nbsp;조 회</th>   
 <c:set var = "number" value = "${pageVO.number }"></c:set>
   <c:forEach var = "article" items = "${articleList }">
    </tr>
    </thead>
    <tbody>
    <tr>
        
        <!-- 번호 -->
         <td align="center"  width="50" > ${number }
    <c:set var = "number" value = "${number - 1 }"></c:set>
    </td>
     <c:set var = "wid" value = "${0}"></c:set>
   <c:if test="${article.re_level > 0 }">
   <c:set var = "wid" value = "${article.re_level * 5}"></c:set>
     <img src="board/images/level.gif" width="${wid }" height="16">
     <!-- <img src="board/images/re.gif"> -->
   </c:if>
  
         
         
       
       <!-- 제목 -->
        <td width="250" >
    <a href="boardContent.bo?num=${article.num }&pageNum=${pageVO.currentPage}">
           ${article.subject }</a> 
         <c:if test="${article.readcount >= 20 }">
         <img src="images/hot.gif" border="0"  height="16">
         </c:if>
         </td>
        
        <!-- 작성자 -->
        <td align="center"  width="100"> 
       <a href="mailto:${article.email1 }">
       ${article.writer }</a></td>
        
        <!-- 작성일 -->
         <td align="center"  width="150">
    <fmt:formatDate var="formDate" value = "${article.reg_date}" pattern="yyyy.MM.dd" />
    <c:out value="${formDate}"></c:out>
    </td>
        
        <!-- 조회 -->
       <td align="center"  width="50">${article.readcount }
    </td>
    </tr>
    </c:forEach>
    </tbody>
</table>



</c:if>

						<!-- 페이지 이동 -->
						<%  if(loginId != null ){%>
						<nav style="  float: right;">
<div class="relative" >
    <a href="boardWriteForm.bo" style="text-decoration-line: none; "> 글쓰기</a>
    </div>
    </nav>
<% } 
	else {%>
		<%
	}
	%>
        <c:if test="${pageVO.count > 0 }">
        <c:if test = "${pageVO.startPage > 10 }">
        <a href="boardList.bo?pageNum=${pageVO.startPage - 10 }">[이전]</a>
		</c:if>
		
		<c:forEach begin="${pageVO.startPage }" end="${pageVO.endPage }" var = "i">
        <a href="boardList.bo?pageNum=${i }">[${i }]</a>
        </c:forEach>
        <c:if test="${pageVO.endPage < pageVO.pageCount }">
        <a href="boardList.bo?pageNum=${startPage + 10 }">[다음]</a>
		</c:if>

</c:if>
</div>
</center>

<jsp:include page="/board/boardFooter.jsp"></jsp:include>
</body>
</html>