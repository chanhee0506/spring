<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="loginout" value="${sessionScope.id==null ? 'Login' : 'Logout' }" />
<c:set var ="loginoutlink" value="${sessionScope.id==null ? '/login/login' : '/login/logout' }" />
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>index</title>

    <link rel="stylesheet" href="./resources/main/main.css" > 
    <script src="./resources/js/main/jquery-3.6.1.min.js"></script>
    <script src="./resources/js/main/script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />

</head>
        <header class="header" style="position: sticky; top: 0;">
            <div class="logo">
            <a href="#">
                <img src="./resources/img/OTTT.png" alt="로고">
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
                <a href="<c:url value='/board/list' />">게시판</a>
                </li>
            </ul>
            </nav>
            <div class="h-icon">
            <ul>
                <li>
                <a class="p3" href="/search">
                    <!-- <img src="./image/icon/search02.png" alt="검색"> -->
                </a>
                </li>
                <li>
                <a class="p4" href="<c:url value='${loginoutlink}'/>">
                   ${loginout}
                </a>
                </li>
            </ul>
            </div>
        </header>
<body style="background-color: #202020; color: #fff;">
    <div class="wrap"> 
        <div style="background-color: black; text-align: center; height: 1080px;">
            <img src="./resources/img/메인이미지.png" style="width: 1200px; background-position: center; margin-top: 150px;"/>
            <div>
                <img src="./resources/img/메인 OTTT.png" style="position: relative; top: -600px; width: 700px;"/>
            </div>
            <span class="main-cat">
                <a href="#"><div>영화</div></a>
                <a href="#"><div>드라마</div></a>
                <a href="#"><div>예능</div></a>
                <a href="#"><div>애니</div></a>
            </span>
        </div>
    </div>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
</body>
</html>