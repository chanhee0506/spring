<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.net.URLDecoder" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>    

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>OTTTlogin</title>  
    <script src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
       
    <link rel="stylesheet" href="../resources/login/login.css" >   
    <script src="../resources/js/member/jquery-3.6.1.min.js"></script>
    <script src="../resources/js/member/script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </head>
  <body>
    <div class="wrap">
      <header>
        <div class="logo">
          <a href="<c:url value='/' />">
            <img src="../resources/img/OTTT.png" alt="로고">
          </a>
        </div>
        <nav class="gnb">
          <ul>
            <li>
              <a href="#">영화</a>
            </li>
            <li>
              <a href="#">드라마</a>
            </li>
            <li>
              <a href="#">예능</a>
            </li>
            <li>
              <a href="#">애니</a>
            </li>
            <li>
              <a href="#">게시판</a>
            </li>
          </ul>
        </nav>
        <div class="h-icon">
          <ul>
            <li>
              <a class="p3" href="/search">
                <!-- <img src="./images/icon/search02.png" alt="검색"> -->
              </a>
            </li>
            <li>
              <a class="p4" href="/member/login">
               <!--  <img src="./images/icon/user01.png" alt="내 정보"> --> 
              </a>
            </li>
          </ul> 
        </div>       
        <div class = "Login">   
          <img src = "../resources/img/OTTTLOGIN.png" width="300" height="80">
     <form action="<c:url value='/login/login' />" method="post" onsubmit="return frmCheck(this)" >
            <div id="msg">
    			<c:if test="${not empty param.msg }">
    				<i class="fa fa-exclamation-circle">${URLDecoder.decode(param.msg)}</i>
    			</c:if>
    		</div>
	        <div class="hihi">
	            <input type="text" name="id" placeholder="아이디" vlaue="${cookie.id.value}" autofocus class="id_input">
	            <input type="password"  name="pwd"  placeholder="비밀번호" class="pw_input">
	            <input type="hidden" name="toURL" value="${param.toURL }">
	            <button class="login_button">로그인</button>
            </div>
            <a>
	            <input type="button" value="회원가입" onClick="location.href='/chanheeyou/register'" class="join" >
	            <input type="button" value="아이디 찾기" onClick="location.href='#'" class="join">
	            <input type="button" value="비밀번호 찾기" onClick="location.href='#'" class="join">
            </a>  
           <label class="remember"><input type="checkbox"  name="rememberId" value="on" ${empty cookie.id.value ? "" : "checked"} />아이디 기억</label>          
        </form>
            <script type="text/javascript">
    	function frmCheck(frm) {
			let msg = ''
			
			if(frm.id.value.length == 0){
				setMessage('id를 입력해 주세요', frm.id)
				return false;
			}
			if(frm.pwd.value.length == 0){
				setMessage('password를 입력해 주세요', frm.pwd)
				return false;
			}
			
			return true;
		}
    	
    	function setMessage(msg, element) {
			document.getElementById("msg").innerHTML = `<i class="fa fa-exclamation-circle">${'${msg}'}</i>`
			if (element) {
				element.select()		//값을 잘못 입력되었을경우 선택되게함
			}
		}
    </script>
         </div>
      </header>
  </body>
</html>