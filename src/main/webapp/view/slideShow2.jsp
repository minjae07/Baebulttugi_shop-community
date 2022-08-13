<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
</head>
<body>
<div class="moa">
<h2 style="text-align=center">산모 정책</h2>
	<div class="moa2"
		style="border: 1px solid black; overflow: auto; float: left;  width: 170px; height: 500px; padding: 10px">
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
		<li class="do">
			<p>경기도</p>
		</li>
		<li class="do">
			<p>강원도</p>
		</li>
		<li class="do">
			<p>충청남도</p>
		</li>
		<li class="do">
			<p>충청북도</p>
		</li>
		<li class="do">
			<p>경상남도</p>
		</li>
		<li class="do">
			<p>전라남도</p>
		</li>
		<li class="do">
			<p>전라북도</p>
		</li>
		<li class="do">
			<p>제주도</p>
		</li>

	</div>
	<div
		style="border: 1px solid black; float: left; width: auto; height: auto;">
		<iframe id="iframe" width="1024" height="500"></iframe>
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
