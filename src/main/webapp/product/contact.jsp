<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배불뚝이 쇼핑몰</title>
<head>
<title>Zay Shop - Contact</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

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

<!-- Load map styles -->
<link rel="stylesheet"
	href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css"
	integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A=="
	crossorigin="" />
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
</head>

<!-- START HERE -->
<link rel="stylesheet"
	href="https://unpkg.com/purecss@1.0.0/build/pure-min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Style The Contact Form How Ever You Prefer -->
<style>
Skip to content
Product 
Team
Enterprise
Explore 
Marketplace
Pricing 
Search
Sign in
Sign up
dwyl /
learn-to-send-email-via-google-script-html-no-server
Public
Code
Issues
9
Pull requests
9
Discussions
Actions
Security
Insights
learn-to-send-email-via-google-script-html-no-server /style.css
 @mckennapsean
mckennapsean Fixes #321 by adding honeypot spam prevention
…
Latest commit 6ea59bb on 27 May 2019
 History
 2 contributors
 @mckennapsean @nelsonic
40 lines (40 sloc)  665 Bytes

body {
	margin: 2em;
}

aside {
	background: #1f8dd6; /* same color as selected state on site menu */
	padding: 0.3em 1em;
	border-radius: 3px;
	color: #fff;
	margin-bottom: 2em;
}

textarea {
	width: 100%;
}

.content-head {
	font-weight: 400;
	text-transform: uppercase;
	letter-spacing: 0.1em;
	margin: 2em 0 1em;
}

.is-center {
	text-align: center;
}

.button-success {
	color: white;
	border-radius: 4px;
	text-shadow: 0 1px 1px rgba(0, 0, 0, 0.2);
	background: rgb(28, 184, 65); /* this is a green */
}

.button-xlarge {
	font-size: 125%;
}

button {
	float: right;
}

#name, #email {
	width: 50%;
}

.honeypot-field {
	display: none;
}
Footer


©
 
2022
 
GitHub
,
Inc
.


Footer
 
navigation


Terms


Privacy


Security


Status


Docs


Contact
 
GitHub


Pricing


API


Training


Blog


About
</style>
<body>
	<!-- Header -->
<jsp:include page="/product/productHeader.jsp"></jsp:include>

	<!-- Modal -->
	<div class="modal fade bg-white" id="templatemo_search" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="w-100 pt-1 mb-5 text-right">
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<form action="" method="get"
				class="modal-content modal-body border-0 p-0">
				<div class="input-group mb-2">
					<input type="text" class="form-control" id="inputModalSearch"
						name="q" placeholder="Search ...">
					<button type="submit"
						class="input-group-text bg-success text-light">
						<i class="fa fa-fw fa-search text-white"></i>
					</button>
				</div>
			</form>
		</div>
	</div>


	<!-- Start Content Page -->
	<div class="container-fluid bg-light py-5">
		<div class="col-md-6 m-auto text-center">
			<h1 class="h1">문의하기</h1>
			<p>아래 이메일로 문의사항을 보내주시기 바랍니다.</p>
		</div>
	</div>

	<!-- 지도 -->
	<div id="map" style="width: 100%; height: 400px;"></div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ff5abc94593b69056b84d0679833060c"></script>
	<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(35.91373625671753, 128.80311142240004), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커를 표시할 위치입니다 
var position =  new kakao.maps.LatLng(35.91373625671753, 128.80311142240004);

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
  position: position
});

// 마커를 지도에 표시합니다.
marker.setMap(map);

// 마커에 커서가 오버됐을 때 마커 위에 표시할 인포윈도우를 생성합니다
var iwContent = '<div style="padding:5px;">배불뚝이 회사</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다

// 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({
    content : iwContent
});

// 마커에 마우스오버 이벤트를 등록합니다
kakao.maps.event.addListener(marker, 'mouseover', function() {
  // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
    infowindow.open(map, marker);
});

// 마커에 마우스아웃 이벤트를 등록합니다
kakao.maps.event.addListener(marker, 'mouseout', function() {
    // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
    infowindow.close();
});
</script>


	<form class="gform pure-form pure-form-stacked" method="POST"
		data-email="baebulttugi2022@gmail.com"
		action="https://script.google.com/macros/s/AKfycbwUrCIHsanaX1kfLrR7gbTHmpyf3_ASmzeS8y8NZIgw5DGWD34eFN-pUPfO5btRbe0B/exec">
		<!-- Start Contact -->
		<div class="container py-5">
			<div class="row py-5">
				<form class="col-md-9 m-auto" method="post" role="form">
					<div class="row">
								<fieldset class="pure-group">
									<label for="name">Name: </label> <input id="name" name="name"
										placeholder="이름을 입력해주세요" />
								</fieldset>


								<fieldset class="pure-group">
									<label for="email"><em>Your</em> Email Address:</label> <input
										id="email" name="email" type="email" value="" required
										placeholder="이메일을 입력해주세요" />
								</fieldset>

								<fieldset class="pure-group">
									<label for="message">Message: </label>
									<textarea id="message" name="message" rows="10"
										placeholder="메세지를 입력해주세요"></textarea>
								</fieldset>




								<div class="row">
									<div class="col text-end mt-2">
										<button type="submit" class="fa fa-paper-plane">보내기</button>
									</div>
								</div>
				</form>
			</div>
		</div>
		<!-- End Contact -->


		<!-- Start Footer -->
		<footer class="bg-dark" id="tempaltemo_footer">
			<div class="container">
				<div class="row">

					<div class="col-md-4 pt-5">
						<h2 class="h2 text-success border-bottom pb-3 border-light logo">Zay
							Shop</h2>
						<ul class="list-unstyled text-light footer-link-list">
							<li><i class="fas fa-map-marker-alt fa-fw"></i> 123
								Consectetur at ligula 10660</li>
							<li><i class="fa fa-phone fa-fw"></i> <a
								class="text-decoration-none" href="tel:010-020-0340">010-020-0340</a>
							</li>
							<li><i class="fa fa-envelope fa-fw"></i> <a
								class="text-decoration-none" href="mailto:info@company.com">info@company.com</a>
							</li>
						</ul>
					</div>

					<div class="col-md-4 pt-5">
						<h2 class="h2 text-light border-bottom pb-3 border-light">Products</h2>
						<ul class="list-unstyled text-light footer-link-list">
							<li><a class="text-decoration-none" href="#">Luxury</a></li>
							<li><a class="text-decoration-none" href="#">Sport Wear</a></li>
							<li><a class="text-decoration-none" href="#">Men's Shoes</a></li>
							<li><a class="text-decoration-none" href="#">Women's
									Shoes</a></li>
							<li><a class="text-decoration-none" href="#">Popular
									Dress</a></li>
							<li><a class="text-decoration-none" href="#">Gym
									Accessories</a></li>
							<li><a class="text-decoration-none" href="#">Sport Shoes</a></li>
						</ul>
					</div>

					<div class="col-md-4 pt-5">
						<h2 class="h2 text-light border-bottom pb-3 border-light">Further
							Info</h2>
						<ul class="list-unstyled text-light footer-link-list">
							<li><a class="text-decoration-none" href="#">Home</a></li>
							<li><a class="text-decoration-none" href="#">About Us</a></li>
							<li><a class="text-decoration-none" href="#">Shop
									Locations</a></li>
							<li><a class="text-decoration-none" href="#">FAQs</a></li>
							<li><a class="text-decoration-none" href="#">Contact</a></li>
						</ul>
					</div>

				</div>

				<div class="row text-light mb-4">
					<div class="col-12 mb-3">
						<div class="w-100 my-3 border-top border-light"></div>
					</div>
					<div class="col-auto me-auto">
						<ul class="list-inline text-left footer-icons">
							<li
								class="list-inline-item border border-light rounded-circle text-center">
								<a class="text-light text-decoration-none" target="_blank"
								href="http://facebook.com/"><i
									class="fab fa-facebook-f fa-lg fa-fw"></i></a>
							</li>
							<li
								class="list-inline-item border border-light rounded-circle text-center">
								<a class="text-light text-decoration-none" target="_blank"
								href="https://www.instagram.com/"><i
									class="fab fa-instagram fa-lg fa-fw"></i></a>
							</li>
							<li
								class="list-inline-item border border-light rounded-circle text-center">
								<a class="text-light text-decoration-none" target="_blank"
								href="https://twitter.com/"><i
									class="fab fa-twitter fa-lg fa-fw"></i></a>
							</li>
							<li
								class="list-inline-item border border-light rounded-circle text-center">
								<a class="text-light text-decoration-none" target="_blank"
								href="https://www.linkedin.com/"><i
									class="fab fa-linkedin fa-lg fa-fw"></i></a>
							</li>
						</ul>
					</div>
					<div class="col-auto">
						<label class="sr-only" for="subscribeEmail">Email address</label>
						<div class="input-group mb-2">
							<input type="text" class="form-control bg-dark border-light"
								id="subscribeEmail" placeholder="Email address">
							<div class="input-group-text btn-success text-light">Subscribe</div>
						</div>
					</div>
				</div>
			</div>

			<div class="w-100 bg-black py-3">
				<div class="container">
					<div class="row pt-2">
						<div class="col-12">
							<p class="text-left text-light">
								Copyright &copy; 2021 Company Name | Designed by <a
									rel="sponsored" href="https://templatemo.com" target="_blank">TemplateMo</a>
							</p>
						</div>
					</div>
				</div>
			</div>

		</footer>
		<!-- End Footer -->

		<!-- Start Script -->
		<script src="assets/js/jquery-1.11.0.min.js"></script>
		<script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
		<script src="assets/js/bootstrap.bundle.min.js"></script>
		<script src="assets/js/templatemo.js"></script>
		<script src="assets/js/custom.js"></script>
		<!-- End Script -->
</body>
</html>
 <script data-cfasync="false" src="form-submission-handler.js"></script>