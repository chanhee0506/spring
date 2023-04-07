<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
    <style type="text/css">
    
    body {
    	background-color: #202020;
    	color: white;
    }
    
    .head {
    	display: flex;
    	border-bottom: 2px solid #33ff33;
    	position: relative;
    }
    
    .head > a {
    	position: absolute;
    	top: 42px;
    	left: 400px;
    	color: white;
    }
    
    .body {
       	margin-top: 30px;
    	display: flex;
    }
    
    .Info {
    	width: 250px;
    	border: 1px solid white;
    	text-align: center;
    }
    
    .userInfo > a {
    	color: white;
    }
    
    .link {
    	width:250px;
    	height: 100px;
    	margin-left: 20px;
    	border: 1px solid white;
    }
    
    .link > ul > li > a {
    	color: white;
    }
    
    </style>
    <title>메인페이지</title>
</head>
<body>
	<div class="head">
		<h1>환영합니다 ${param.id} 님.</h1>  
		<a href="http://localhost/egg/login">로그아웃</a>   
    </div>
    <div class="body">
	    <div class="Info">
	    	<div class="userInfo">
		    	<h2>id: ${param.id}</h2>
			    <h2>pwd: ${param.pwd}</h2> 
			    <a href="#">회원정보 수정</a>
		    </div>
	    </div>
	    <div class="link">
	    	<ul>
		    	<li>
		    		<a href="www.naver.com">네이버 바로가기</a>
		    	</li>
		    	<li>
		    		<a href=https://www.youtube.com">유튜브 바로가기</a>
		    	</li>
		    	<li>
		    		<a href="https://www.google.com/">구글 바로가기</a>
		    	</li>		    	
	    	</ul>
	    </div>
    </div>
</body>
</html>