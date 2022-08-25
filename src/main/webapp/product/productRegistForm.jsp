<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">
<style>
	#registFormArea{
	width : 800px;
	margin : auto;
	border : 1px dotted green;
	}
	h1{
		text-align: center;
		border-bottom: 3px double blue;
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

</head>
<body>
<!-- Header -->
<jsp:include page="/product/productHeader.jsp"></jsp:include>

	<section id = "registFormArea">
		<h1>상품등록</h1>
		<form action="productRegist.go" method="POST" 
		name = "registForm" enctype="multipart/form-data">
		<table>
			<tr>
				<td class = "td_left"><label for = "productKind">종류 :</label></td>
				<td class = "td_right"><input type="text" name="productKind" id = "productKind" 
				required="required" placeholder="종류" /></td>
			</tr>
				<tr>
				<td class = "td_left"><label for = "productCategory">카테고리 :</label></td>
				<td class = "td_right">
				<select name = 'category'>
					<option value="의류"  id = "productCategory" >의류</option>
					<option value="화장품"  id = "productCategory" >화장품</option>
					<option value="태교용품"  id = "productCategory" >태교용품</option>
					<option value="영양제"  id = "productCategory" >영양제</option>
				</select>
				
			</tr>
			<tr>
				<td class = "td_left"><label for = "productPrice">가격 :</label></td>
				<td class = "td_right"><input type="text" name="productPrice" id = "productPrice" 
				required="required" placeholder="가격" />
			</tr>
			<tr>
				<td class = "td_left"><label for = "productImage">이미지 :</label></td>
				<td class = "td_right"><input type="file" name="productImage" id = "productImage" 
				 />
			</tr>
			<tr>
				<td class = "td_left"><label for = "productContent">설명 :</label></td>
				<td class = "td_right"><textarea name = "productContent" id = "productContent"
				rows = "20" cols = "40"></textarea></td>			
			</tr>
			<tr>
				<td colspan = "2" style = "text-align: center">
					<input type ="submit" value = "상품등록" />
				</td>
							
			</tr>
		</table>
		</form>
	</section>
	
	
	<!-- Footer -->
   <jsp:include page="/product/productFooter.jsp"></jsp:include>
</body>
</html>