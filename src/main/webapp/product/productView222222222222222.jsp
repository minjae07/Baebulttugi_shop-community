<%@page import="shop.vo.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//DogVO dogVO = (DogVO)request.getAttribute("dogVO");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#wrap{
		width : 800px;
		margin : auto;
	}
	#top{
		height : 150px;
		background: orange;
	}
	#main{
		margin-top: 10px;
	}
	#main_left{
		height : 300px;
		width : 180px;
		background: green;
		margin-right : 10px;
		float : left;
	}
	.viewProductImage{
		height : 290px;
		width : 170px;
	}
	#main_right{
		height : 300px;
		width : 600px;
		background: yellow;
		float : left;
	}
	#bottom{
		height : 150px;
		margin-top : 10px;
		background: gray;
	}
</style>
</head>
<body>
	<section id = "wrap">
		<header id = "top">
			<h1>
				${productVO.productKind } 상품 정보
			</h1>
		</header>
		<section id = "main">
			<aside id = "main_left">
				<img src = "images/${productVO.productImage }.jpg" class = "viewProductImage"/>
			</aside>
			<section id = "main_right" style = "font-size : xx-large">
				<b>개 가격 : </b> ${productVO.productPrice }원<br>
				<b>개 설명 : </b> ${productVO.productContent }<br>
			</section>
		</section>
		<div style = "clear:both;"></div>
		<footer id = "bottom">
			<h1>
			<a href = "productList.go">쇼핑계속하기</a>
			<a href = "productCartAdd.go?id=${productVO.productId }">장바구니담기</a>
			</h1>
		</footer>
	</section>
</body>
</html>