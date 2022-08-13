<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
  
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>'배불뚝이'-산모를 위한 사이트</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"   rel="stylesheet" type="text/css" />
<link href="mainPage/css/styles.css" rel="stylesheet" />
<link href="mainPage/css/slideShow.css" rel="stylesheet" />
<!-- <link href="mainPage/css/slideShow.css" rel="stylesheet"> 링크안걸림-->
   
</head>

<body>
   
<jsp:include page="/mainPage/header.jsp"></jsp:include>

<header>
<!-- Navigation (모아보기) -->
 <div style="height: 500px; width:auto; padding:1px 100px 1px;">
<jsp:include page="/view/slideShow2.jsp"></jsp:include>
</div>

<!--  게시판 링크  -->
<br><br>
        <section class="features-icons bg-light text-center">
            <div class="container">
                <div class="row">
                    <div class="otherArea">
                        <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                            <div class="features-icons-icon d-flex"><i class="bi-window m-auto text-primary"></i></div>
                            <a href=#모아보기><h3>모아보기</h3></a>
                            <p class="lead mb-0">정부정책뿐만 아니라 지역별 지원정책이나 임신관련 소식이 모아져 있습니다.</p>
                        </div>
                    </div>
                    <div class="otherArea">
                        <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                            <div class="features-icons-icon d-flex"><i class="bi-layers m-auto text-primary"></i></div>
                            <a href=#쇼핑몰><h3>쇼핑몰</h3></a>
                            <p class="lead mb-0">산모에게 필요한 모든 제품</p>
                        </div>
                    </div>
                    <div class="otherArea">
                        <div class="features-icons-item mx-auto mb-0 mb-lg-3">
                            <div class="features-icons-icon d-flex"><i class="bi-terminal m-auto text-primary"></i></div>
                            <a href = "boardList.bo"><h3>커뮤니티</h3></a>
                            <p class="lead mb-0">산모들의 이야기</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    
    
   </header>

    
   <!-- 이미지 슬라이드 -->
   <section class="showcase">
      <div class="container-fluid p-0">
         <div class="row g-0">
                 <p  id="사이트설명"></p>
            <div class="col-lg-6 order-lg-2 text-white showcase-img"
               style="background-image: url('mainPage/img/bg-showcase-2.jpg')"></div>
            <div class="col-lg-6 order-lg-1 my-auto showcase-text">
               <h2>사이트 설명</h2>
               <p class="lead mb-0">아이를 품고 있는 산모에게 필요한 제품과 정보를 제공하는 쇼핑몰 겸 커뮤니티
                  사이트 그동안 온라인 상에는 아기와 출산한 산모들에게 도움되는 사이트가 주로 존재했습니다. 미래를 꿈꾸며 아이를 품고
                  있는 산모들을 위해, 사랑하는 아내를 생각하는 아빠들을 위해 이 사이트를 개발하고자 합니다.</p>
            </div>
         </div>
         <div class="row g-0">
                <p id="개발배경"></p>
            <div class="col-lg-6 text-white showcase-img"
               style="background-image: url('mainPage/img/bg-showcase-1.jpg')"></div>
            <div class="col-lg-6 my-auto showcase-text">
                    
               <h2>개발배경</h2>
               <p class="lead mb-0" >육아관련 사이트를 만들기 위해 시장 조사를 하던 중, 산모만을 위한 사이트는
                  찾아보기가 어렵다는 것을 느꼈습니다. 따라서 저희는 임신과 관련된 정보가 모아져 있는 사이트를 만들기로 하였습니다.</p>
            </div>
         </div>
         <div class="row g-0">
                <p id="업데이트정보"></p>
            <div class="col-lg-6 order-lg-2 text-white showcase-img"
               style="background-image: url('mainPage/img/bg-showcase-3.jpg')"></div>
            <div class="col-lg-6 order-lg-1 my-auto showcase-text">
               <h2>업데이트 정보</h2>
               <p class="lead mb-0" >220720 ver1. mainPage UI 구성(이지후)</p>
            </div>
         </div>
      </div>
   </section>

<!-- 개발자 정보 -->
   <section class="testimonials text-center bg-light">
        <p id="개발자정보"></p>
      <div class="container">
         <h2 class="mb-5" >개발자정보</h2>
         <div class="row">
            <div class="col-lg-4">
               <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                  <img class="img-fluid rounded-circle mb-3"
                     src="mainPage/img/testimonials-1.jpg" alt="..." />
                  <h5>이지후</h5>
                  <p class="font-weight-light mb-0">이지후 설명</p>
               </div>
            </div>
            <div class="col-lg-4">
               <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                  <img class="img-fluid rounded-circle mb-3"
                     src="mainPage/img/testimonials-2.jpg" alt="..." />
                  <h5>배민재</h5>
                  <p class="font-weight-light mb-0">배민재 설명</p>
               </div>
            </div>
         </div>
      </div>
      </div>
   </section>

   <!-- Footer-->
   <footer class="footer bg-light">
      <div class="container">
         <div class="row">
            <div class="col-lg-6 h-100 text-center text-lg-start my-auto">
               <ul class="list-inline mb-2">
                  <li class="list-inline-item"><a href="#!">사이트 소개</a></li>
                  <li class="list-inline-item">⋅</li>
                  <li class="list-inline-item"><a href="#!">개발배경</a></li>
                  <li class="list-inline-item">⋅</li>
                  <li class="list-inline-item"><a href="#!">업데이트 정보</a></li>
                  <li class="list-inline-item">⋅</li>
                  <li class="list-inline-item"><a href="#!">고객센터</a></li>
                  <li class="list-inline-item">⋅</li>
                  <li class="list-inline-item"><a href="#!">광고/제휴 문의</a></li>
               </ul>
               <p class="text-muted small mb-4 mb-lg-0">&copy; baebulttugi, since 2022</p>
            </div>
            <div class="col-lg-6 h-100 text-center text-lg-end my-auto">
               <ul class="list-inline mb-0">
                  <li class="list-inline-item me-4"><a href="#!"><i
                        class="bi-facebook fs-3"></i></a></li>
                  <li class="list-inline-item me-4"><a href="#!"><i
                        class="bi-twitter fs-3"></i></a></li>
                  <li class="list-inline-item"><a href="#!"><i
                        class="bi-instagram fs-3"></i></a></li>
               </ul>
            </div>
         </div>
      </div>
   </footer>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
   <script src="js/scripts.js"></script>
   <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>


