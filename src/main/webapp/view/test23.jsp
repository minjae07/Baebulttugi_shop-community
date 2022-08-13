<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<!-- jquery 를 사용하기 위해 jquery 파일을 로드 -->
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script>
$(document).ready(function(e) {
/* a요소를 클릭 했을 시 */
    $('button').click(function(){
/* iframe 요소의 src 속성값을 a 요소의 data-url 속성값으로 변경 */ 
        $('#iframe').attr('src',$(this).attr('data-url'));
        })
});
</script>

<a  data-url="http://naver.com">네이버</a>
<button class="button" data-url=https://seoul-agi.seoul.go.kr/smom/plan/PlanBusiness>서울특별시</button>
<a data-url="http://daum.net">다음</a>
<a  data-url="http://nate.com">네이트</a>

<div  style ="border: 1px solid black;  float:left;  width:auto; height: auto; padding:10px">
<iframe id="iframe" width="1024" height="500" ></iframe>
</div>

</body>
</html>