<%@page import="shop.vo.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix = "c" 
uri = "http://java.sun.com/jsp/jstl/core"%>
<%
	/* ArrayList<DogVO> dogList = 
	(ArrayList<DogVO>)request.getAttribute("dogList");
	
	ArrayList<String> todayImageList = 
			(ArrayList<String>)request.getAttribute("todayImageList"); */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#dogListArea, #todayImageListArea{
		width : 620px;
		margin : auto;
		border : 1px solid red;
		text-align: center;
	}
	h1 {
		text-align: center;
	}
	table{
		width : 600px;
	}
	.productListImage{
		width : 150px;
		height : 150px;
	}
	.todayImage{
		width : 100px;
		height : 100px;
	}
</style>
</head>
<body>
	<section id = "productListArea">
		<%-- <%
			if(dogList == null || dogList.size() == 0){
		%> --%>
		<c:if test="${empty productList }">
			<h1>등록된 상품 정보가 없습니다.</h1>
	 	<%-- <%
			}
			else{
		%> --%>
		</c:if>
		<c:if test="${not empty productList }">
		<table>
			<tr>
				<%-- <%for(int i = 0;i < dogList.size();i++) { %> --%>
				<c:forEach var = "product" items = "${productList }" 
				varStatus="status">
				<td>
					<a href = "productView.go?id=${product.productId }">
					<img src = "images/${product.productImage }.jpg"
					 class = "productListImage"/></a><br>
					 상품명 : ${product.productKind }<br>
					 가격 : ${product.productPrice }원
				</td>
				<%-- <%
				if((i + 1) % 4 == 0 ){
				%> --%>
				<c:if test="${(status.index + 1) % 4 == 0 }">
				</tr>
				<tr>
				</c:if>
				<%-- <%
				}
				}
				%> --%>
				</c:forEach>
			</tr>
		</table>
		 <%-- <%
			}
		%> --%>
		</c:if>
	</section>
	
	<%-- <%
		if(todayImageList != null && todayImageList.size() > 0){
	%> --%>
	<c:if test="${not empty todayImageList }">
	<section id = "todayImageListArea" style = "margin-top : 15px">
		<h1>오늘본 상품 목록</h1>
		<table>
		<tr>
		<%-- <%
			for(int i = 0;i < todayImageList.size();i++){
		%> --%>
		<c:forEach var = "todayImage" items = "${todayImageList }">
			<td><img src = "images/${todayImage}.jpg" class = "todayImage"/></td>
		
		</c:forEach>
		<%-- <%
			}
		%> --%>
		</tr>
		</table>
	</section>
	
	<%-- <%
		}
	%> --%>
	</c:if>
</body>
</html>





