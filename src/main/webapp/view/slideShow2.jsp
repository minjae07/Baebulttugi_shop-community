<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<style>
.ml3 {
  font-weight: 900;
  font-size: 2.0em;
}
</style>
</head>
<body>
<div class="moa">
<!-- <h2 style="text-align: center">임산부 지원서비스 사이트</h2> -->
<br><br>
<h1 class="ml3" style="text-align: center"  >임산부 지원서비스 사이트</h1>
<script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>
<script>
//Wrap every letter in a span
var textWrapper = document.querySelector('.ml3');
textWrapper.innerHTML = textWrapper.textContent.replace(/\S/g, "<span class='letter'>$&</span>");

anime.timeline({loop: true})
  .add({
    targets: '.ml3 .letter',
    opacity: [0,1],
    easing: "easeInOutQuad",
    duration: 2250,
    delay: (el, i) => 150 * (i+1)
  }).add({
    targets: '.ml3',
    opacity: 0,
    duration: 1000,
    easing: "easeOutExpo",
    delay: 1000
  });
</script>
	<div class="moa2"
		style="border: 1px solid black; overflow: auto; float: left;  width: 170px; height: 508px; padding: 10px">
		<li class="btn-group">
			<button class="button" 
				data-url=https://seoul-agi.seoul.go.kr/smom/plan/PlanBusiness>서울특별시</button>
		</li>
		<li class="btn-group">
			<button class="button"
				data-url=https://www.incheon.go.kr/welfare/WE020306>인천광역시</button>
		</li>
		<li class="btn-group">
			<button class="button"
				data-url=https://www.daejeon.go.kr/drh/DrhContentsHtmlView.do?menuSeq=6849>대전광역시</button>
		</li>
		<li class="btn-group">
			<button class="button"
				data-url=https://www.xn--hc0by27bu6atul3dc6t.kr/main/contents/pregnancySrve1Menu>광주광역시</button>
		</li>
		<li class="btn-group">
			<button class="button"
				data-url=https://www.daegu.go.kr/health/index.do?menu_id=00000644&servletPath=%2Fhealth>대구광역시</button>
		</li>
		
		<li class="btn-group">
			<button class="button"
			data-url=https://www.ulsan.go.kr/u/welfare/contents.do?mId=001003002000000000>울산광역시</button>
		</li>
		<li class="btn-group">
			<button class="button"
			data-url=https://www.busan.go.kr/depart/ahlifepeople0201>부산광역시</button>
		</li>
		<li class="btn-group">
			<button class="button"
			data-url=https://www.gg.go.kr/bbs/boardView.do?bsIdx=648&bIdx=81702&menuId=1888>경기도</button>
		</li>
		<li class="btn-group">
			<button class="button"
			data-url=https://www.provin.gangwon.kr/gw/portal/sub07_02_08_02>강원도</button>
		</li>
		<li class="btn-group">
			<button class="button"
			data-url=http://chungnam.go.kr:8100/orga/content.do?mnu_cd=CPWMENU00386>충청남도</button>
		</li>
		<li class="btn-group">
			<button class="button"
			data-url=https://www.chungbuk.go.kr/young/contents.do?key=1304>충청북도</button>
		</li>
		<li class="btn-group">
			<button class="button"
			data-url=https://www.gyeongnam.go.kr/index.gyeong?menuCd=DOM_000000131002002002>경상남도</button>
		</li>
		<li class="btn-group">
			<button class="button"
			data-url=https://www.gb.go.kr/Main/open_contents/section/wel/page.do?mnu_uid=1984&dept_code=&dept_name=&BD_CODE=w_info&bdName=&cmd=1&Start=0&B_NUM=0&B_STEP=0&B_LEVEL=0&key=0&word=&p1=20&p2=0&V_NUM=>경상북도</button>
		</li>
		<li class="btn-group">
			<button class="button"
			data-url=https://www.jwlb.or.kr/page/?site=jwlb&mn=40>전라남도</button>
		</li>
		<li class="btn-group">
			<button class="button"
			data-url=https://www.imsil.go.kr/index.imsil?menuCd=DOM_000000104001006002>전라북도</button>
		</li>
		<li class="btn-group">
			<button class="button"
			data-url=https://www.jejusi.go.kr/chc/guideBusiness/jeju/mch/9.do>제주도</button>
		</li>

	</div>
	<div
		style="border: 1px solid black; float: left; width: auto; height: auto;">
		<iframe src="mainPage/img/mom.png" id="iframe" width="1024" height="500">
		</iframe>
	</div>

</div>


<br>
</body>
</html>

<script>
$(document).ready(function(e) {
	/* a요소를 클릭 했을 시 */
	    $('button').click(function(){
	/* iframe 요소의 src 속성값을 a 요소의 data-url 속성값으로 변경 */ 
	        $('#iframe').attr('src',$(this).attr('data-url'));
	        })
	});



</script>
