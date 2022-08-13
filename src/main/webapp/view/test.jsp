<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>Document</title>
 </head>
 <body>
 <h3>ifram 공간분할</h3><!--내 사이트에 임의의 사이트 연결하기-->
   <div style="background:#ffff00;">
      <span>
         <a href="002.html" target="a">인사말</a>
      </span>
      <span>
         <a href="003.html" target="a">과정소개</a>
      </span>
      <span>
         <a href="004.html" target="a">학과소개</a>
      </span>
      <span>
         <a href="https://www.cu.ac.kr" target="b">학교소개</a>
      </span>
   </div>
   <p></p>
   <iframe src="001.html" width="400" height="200" name="a" frameborder="0" scrolling="no"></iframe>
   <iframe src="001.html" width="400" height="200" name="b" frameborder="0"></iframe>

   <div style="background:#ffff00;">대구가톨릭대학교</div>

 </body>
</html>