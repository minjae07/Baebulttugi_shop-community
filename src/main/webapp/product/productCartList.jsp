<%@page import="shop.vo.CartVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	/* ArrayList<CartVO> cartList = 
	(ArrayList<CartVO>)request.getAttribute("cartList");
	int totalMoney = (int)request.getAttribute("totalMoney"); 
	*/
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="apple-touch-icon" href="assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/templatemo.css">
<link rel="stylesheet" href="assets/css/custom.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="assets/css/fontawesome.min.css">

<!-- Slick -->
<link rel="stylesheet" type="text/css" href="assets/css/slick.min.css">
<link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">
<style>
#cartListArea {
	width: 600px;
	margin: auto;
}

div#table{
line-height : 2.5;
}

h1 {
	text-align: center;
}

.cartProductImage {
	width: 70px;
	height: 70px;
}

table {
	width: 580px;
	margin: auto;
	text-align: center;
}

.upDownImage {
	width: 15px;
	height: 15px;
}
</style>
<script>
	function downQty(productId, productQty){
		if(productQty != 1){
			location.href = "productCartQtyDown.go?id=" + productId;
		}
	}
	function checkAll(){
		
		
		var allCheck = document.getElementById("allCheck");
		var delete1 = document.myForm.delete1;
		//동일한 id 값으로 체크박스가 여러개 생성되면
		//해당 이름의 배열객체가 생성됨
		
		if(delete1.length == undefined){
			delete1.checked = allCheck.checked;
			//checked 속성값이 true면 체크박스가 체크되고
			//false 면 해제된다.
		}
		else{
			for(i = 0; i < delete1.length; i++){
				delete1[i].checked = allCheck.checked;
			}
		}
		
	}
</script>
</head>
<body>
	<!-- Header -->
	<jsp:include page="/product/productHeader.jsp"></jsp:include>


	<section id="cartListArea">
		<%-- <%
			if(cartList == null || cartList.size() == 0){
		%> --%>
		<c:if test="${empty cartList }">
			<h1>장바구니에 담긴 상품이 없습니다.</h1>
		</c:if>
		<%-- <%
			}
			else{
		%> --%>
		<c:if test="${not empty cartList }">
			<form action="productCartRemove.go" method="POST" name="myForm">
				<div>
					<table style="height: 500px;">
						<tr>
							<td><input type="checkbox" id="allCheck" name="allCheck"
								onClick="checkAll()" /></td>
							<td>번호</td>
							<td>상품이미지</td>
							<td>상품명</td>
							<td>가격</td>
							<td>수량</td>
						</tr>
						<c:set var="num" value="0"></c:set>
						<c:forEach var="cart" items="${cartList }">
							<c:set var="num" value="${num + 1 }"></c:set>
							<%-- <%
					int num = 1;
					for(int i = 0;i < cartList.size(); i++){
				%> --%>
							<tr>
								<td><input type="checkbox" id="delete1" name="delete1"
									value="${cart.productId }" /></td>
								<td>${num }</td>
								<td><img src="images/${cart.productImage }.jpg"
									class="cartProductImage" /></td>
								<td>${cart.productKind }</td>
								<td>${cart.productPrice }원</td>
								<td><a href="productCartQtyUp.go?id=${cart.productId }"><img
										src="images/up.jpg" class="upDownImage" /></a><br>
									${cart.productQty }개<br> <a
									href="javascript:downQty(${cart.productId },${cart.productQty })"><img
										src="images/down.jpg" class="upDownImage" /></a></td>
							</tr>

							<%-- <%
					}
				%> --%>
						</c:forEach>
						<tr>
							<td colspan="6" style="text-align: right"><input
								type="submit" value="삭제" /></td>
						</tr>

						<tr>

							<td colspan="6" style="text-align: right; font-size: xx-large"ㅂ>
								총결제 금액 : ${totalMoney }</td>
						</tr>
					</table>
					<div class="row pb-3">
						<div class="col d-grid">
							<a href="productList.go" class="link_button2">쇼핑 계속하기</a>
						</div>
			</form>
		</c:if>
		<%-- <%
			}
		%> --%>
	</section>
	<jsp:include page="/product/productFooter.jsp"></jsp:include>
</body>
</html>