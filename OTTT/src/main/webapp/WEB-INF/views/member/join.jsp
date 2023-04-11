<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>otttjoin</title>  

    <link rel="stylesheet" href="../resources/css/member/join.css"/>   
    <script src="../resources/js/member/jquery-3.6.1.min.js"></script>
    <script src="../resources/js/member/script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </head>
  <body>
    <div class="wrap">
      <header>
        <div class="logo">
          <a href="#">
            <img src="../resources/img/OTTT.png" alt="로고">
          </a>
        </div>
        <nav class="gnb">
          <ul>
            <li>
              <a href="#">영화&nbsp;&nbsp;</a>
            </li>
            <li>
              <a href="#">드라마&nbsp;</a>
            </li>
            <li>
              <a href="#">예능</a>
            </li>
            <li>
              <a href="#">애니&nbsp;</a>
            </li>
            <li>
              <a href="#">게시판</a>
            </li>
          </ul>
        </nav>
         <div class="h-icon">
          <ul>
            <li>
              <a href="#">
                <img src="./images/icon/search02.png" alt="검색">
              </a>
            </li>
            <li>
              <a href="#">
                <img src="./images/icon/user01.png" alt="내 정보">
              </a>
            </li>
          </ul>
        </div> 
         
        
        
        <div class="wrapper">
          <h1 style="font-size: 21px; display: inline-block;">회원가입</h1>
          <form method="post" id="membership">
            <div class="Id">
              <input type="text" id="id" title="ID" maxlength="15" style="border: none;" placeholder="아이디 입력" required pattern="^[a-zA-Z0-9]+$" name="memberId" class="id_input">
              <span class="errorMsg" id="idErrorMsg"></span>
              	<span class="id_input_re_1">사용 가능한 아이디입니다.</span>
				<span class="id_input_re_2">아이디가 이미 존재합니다.</span>
            </div>
            <div class="password">
              <input type="password" id="password" title="PW" maxlength="20" style="border: none;" placeholder="비밀번호 입력" required pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^\da-zA-Z])(.{8,20})$" name="memberPw">
              <span class="errorMsg" id="passwordErrorMsg"></span>
            </div>
            <div class="passwordCheck">
              <input type="password" id="passwordCheck" title="PWC" maxlength="20" style="border: none;" placeholder="비밀번호 재확인" required>
              <span class="errorMsg" id="passwordCheckErrorMsg"></span>
            </div>
          

          
        
        
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
      //아이디 중복검사
        $('.id_input').on("propertychange change keyup paste input", function(){

        	var memberId = $('.id_input').val();			// .id_input에 입력되는 값
        	var data = {memberId : memberId}				// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
        	
        	$.ajax({
        		type : "post",
        		url : "/member/memberIdChk",
        		data : data,
        		success : function(result){
        			// console.log("성공 여부" + result);
        			if(result != 'fail'){
        				$('.id_input_re_1').css("display","inline-block");
        				$('.id_input_re_2').css("display", "none");				
        			} else {
        				$('.id_input_re_2').css("display","inline-block");
        				$('.id_input_re_1').css("display", "none");				
        			}
       			
       		}// success 종료

        	}); // ajax 종료

        });// function 종료
        $(document).ready(function() {
          // 아이디 유효성 검사
          $('#id').on('blur', function() {
            var idValue = $(this).val();
            var idRegex = /^[a-zA-Z0-9]+$/;
            if (!idRegex.test(idValue)) {
              $('#idErrorMsg').text('아이디는 영문자와 숫자만 사용 가능합니다.');
            } else if (idValue.length < 6) {
              $('#idErrorMsg').text('아이디는 6자 이상이어야 합니다.');
            } else {
              $('#idErrorMsg').text('');
            }
          });
          
          // 비밀번호 유효성 검사
          $('#password').on('blur', function() {
            var passwordValue = $(this).val();
            var passwordRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^\da-zA-Z])(.{8,20})$/;
            if (!passwordRegex.test(passwordValue)) {
              $('#passwordErrorMsg').text('비밀번호는 영문 대/소문자, 숫자, 특수문자를 포함하여 8~20자리로 입력해야 합니다.');
            } else {
              $('#passwordErrorMsg').text('');
            }
          });
          
          // 비밀번호 재확인
          $('#passwordCheck').on('blur', function() {
            var passwordValue = $('#password').val();
            var passwordCheckValue = $(this).val();
            if (passwordValue !== passwordCheckValue) {
              $('#passwordCheckErrorMsg').text('비밀번호가 일치하지 않습니다.');
            } else {
              $('#passwordCheckErrorMsg').text('');
            }
          });
        });
        $(document).ready(function(){
        	//회원가입 버튼(회원가입 기능 작동)
        	$(".join_button").click(function(){
        		$("#membership").attr("action", "/ottt/member/join");
        		$("#membership").submit();
        	});
        });
        </script>
     
        
           


              <div class="name">
                <input type="text" id="name" title="NM" maxlength="10" style="border: none;" placeholder="이름" name="memberName" >
                <span><select name="성별">
                  <option value="">선택</option>
                  <option value="남자">남자</option>
                  <option value="여자">여자</option>
                  <option value="비공개">비공개</option>
                </select>
                </span>
                <script>
                  const form = document.querySelector('form');
                  const genderSelect = form.querySelector('select[name="성별"]');

                  form.addEventListener('submit', (event) => {
                    if (genderSelect.value === '') {
                      event.preventDefault(); // 폼 제출을 막습니다.
                      alert('성별을 선택해주세요.');
                    }
                  });
                </script>
          
                <div class="nname">
                  <input type="text" id="nname" title="NNM" maxlength="10" style="border: none;" placeholder="닉네임" >
                </div>
                <div class="email">
                 <input type="email" id="email" title="EM" maxlength="20" style="border: none;" placeholder="이메일" >
                 <span>
                  <select id="domain" name="직접입력">
                    <option value="select">직접입력</option>
                    <option value="naver.com">naver.com</option>
                    <option value="gmail.com">gmail.com</option>
                  </select>
                 </span> 
                 <script>
                  document.getElementById('domain').addEventListener('change', function() {
                    var domain = this.value;
                    if (domain !== 'select') {
                      document.getElementById('email').value += '@' + domain;
                    }
                  });
                  </script>
                 <button id="send-verification-code">인증번호 발송</button>
                </div>
                <div class="Certification">
                <input type="text" id="Certification" title="EM" maxlength="20" style="border: none;" placeholder="인증번호" >
                <button disabled id="completion" onclick="checkCompletion()">인증확인</button>
                </div>
                <div class="back">
                
                    <input type="button" value="이전" >
                  
                </div>
                <div class="complate">
                  <input type=submit class="join_button" value="완료">
                </div>
           
               </div>
              </form>
    







      </header>

  </body>
</html>


