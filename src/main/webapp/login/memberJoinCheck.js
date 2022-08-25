 var special_re = /[~!@#$%^&*()_+|<>?:{}]/ //특수문자
  var re = /^[a-zA-Z0-9]{4,12}$/ // a~z,A~Z,0~9까지 사용가능하며 4~12자리 입력
  var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
  //mail주소 유효성 검사
  var memberId;
  var pw;
  var repw;
  var mail;
  var id_num_1
  var id_num_2
  var arrNum1 = new Array(); // 주민번호 앞자리숫자 6개를 담을 배열
  var arrNum2 = new Array(); // 주민번호 뒷자리숫자 7개를 담을 배열
  var idFlag = 0; //id확인의 카운트를 세주는 변수
  var pwFlag = 0; // password확인의 카운트를 세주는 변수
  var mailFlag = 0;  //mail 주소 확인의 카운트를 세주는 변수
  var numFlag = 0; //주민등록번호 확인의 카운트를 세주는 변수

  function checkingID() { //아이디 유효성 검사
    valiData();
    if (re.test(id) == true && !(special_re.test(id)) == true) { //re에 만족하고
      //찾는 문자열이, 들어있는지 아닌지 확인, 찾으려는 문자가 들어있으면, 결과는 "true"
      alert(id + " : 사용 가능한 아이디 입니다.");
      idFlag = 1; //idflag를 1로 변경
    } else {
      alert("[ID Error] 4~12자의 영문 대소문자,숫자만 입력해주세요.");
    }
  }

  //비밀번호 유효성 검사
  

  //메일 형식 확인
  function checkMail() {
    valiData();
    if (re2.test(mail) != true) { //re에 만족하고
      //찾는 문자열이, 들어있는지 아닌지 확인, 찾으려는 문자가 들어있으면, 결과는 "true"
      alert("[Mail Error] 메일 형식을 확인해주세요.");
    } else {
      alert("사용 가능한 메일 주소 입니다.");
      mailFlag = 1;
      mail.value = "";
      //pw.focus();
    }
  }

  //주민등록번호 유효성 검사
   //checkNum함수 닫기

  //주소 형식
  function openZipSearch() {
    new daum.Postcode({
      oncomplete: function(data) {
        $('[name=zip]').val(data.zonecode); // 우편번호 (5자리)
        $('[name=addr1]').val(data.address);
        $('[name=addr2]').val(data.buildingName);
      }
    }).open();
  }

  function checkAll() {
    if (idFlag == 1 && pwFlag == 1 && mailFlag == 1 && numFlag == 1) {
       //유효성 검사를 했는지 확인해주는 각 플래그들이 1로 변경되어야먄 회원가입이 진행된다.
      return true; //참이면 true로 반환
    } else {
      if (idFlag != 1) {
        alert("ID확인을 진행해주세요.")
        return false;
      } else if (pwFlag != 1) {
        alert("Password 확인을 진행해주세요.")
        return false;
      } else if (mailFlag != 1) {
        alert("mail 주소 확인을 진행해주세요.")
        return false;
      } else if (numFlag != 1) {
        alert("주민등록번호 확인을 진행해주세요.")
        return false;
      }
    }
  }