<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./resources/main/main.css" > 
    <title>error400</title>
</head>
<body style="background-color: black;">
        <div style="background-color: black; text-align: center; height: 1080px;">
            <img src="./resources/img/메인이미지.png" style="width: 1200px; background-position: center; margin-top: 150px;"/>
            <div>
                <img src="./resources/img/OTTT.png" alt="로고" style="position: relative; bottom: 750px;">
            </div>
            <h1 style="position: relative; bottom: 650px;">[400] 잘못된 요청입니다. 확인 후 다시 한번 요청해주세요.</h1>
                <h1 style="position: relative; bottom: 650px;">예외가 발생했습니다.</h1>
                <div style="position: relative; bottom: 650px;">
    발생한 예외 : ${pageContext.exception }<br>
    예외 메세지 : ${pageContext.exception.message }<br>
    
    <ol>
    	<c:forEach items="${pageContext.exception.stackTrace }" var="i">
    		<li>${i.toString() }</li>
    	</c:forEach>
    </ol>
    </div>
        </div>
</body>
</html>