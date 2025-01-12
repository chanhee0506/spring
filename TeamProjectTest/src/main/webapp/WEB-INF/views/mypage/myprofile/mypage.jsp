<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
  	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>마이페이지</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <link rel="stylesheet" href="${path}/resources/css/mypage/mypage.css" >
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
</head>
<body>
	<div class="wrap">
	
	<%@ include file="../../fix/header.jsp" %>

      	<section class="sec01">      
        	<div class="mypage-info">
	          	<div class="porfile">
	            	<img  src=${userDTO.image } alt="프로필이미지">
	          	</div>
	          	<div class="user">
	          		<ul>
	          			<li class="user-name">
	          				<span>${userDTO.user_nicknm }</span>
          				</li>
		              	<li class="user-follow">
		                	<span class="user-follow-l"><a href="<c:url value="/mypage/follower" />">팔로우</a></span>
		                	&nbsp;|&nbsp;
		                	<span class="user-follow-l"><a href="<c:url value="/mypage/following" />">팔로워</a></span>
		              	</li>
	              	</ul>
              	</div>
              	
              	<div class="set">
              		<ul>
              			<li>
              				<a href="<c:url value="/mypage/setting" />">
              				<img class="set-img" src="${path}/resources/images/img/톱니.png" alt="설정이미지">
            				</a>
           				</li>
           				<c:choose>
						  <c:when test="${userDTO.admin.toString()=='Y'}">
						    <li>
						      <a href="<c:url value='/admin' />" class="admin">관리자 페이지</a>
						    </li>
						  </c:when>
						  <c:otherwise>
						    <!-- 아무것도 표시하지 않음 -->
						  </c:otherwise>
						</c:choose>
           				<li>
           					<a href='<c:url value="/logout" />' class="logout">로그 아웃</a>
       					</li>
   					</ul>
				</div>
			</div>
		</section>
		
		<%@ include file="../../fix/mnb.jsp" %>
				
		<section class="sec02">
			<div class="mymenu">
				<div class="mycontent">
					<ul>
						<li class="mydiary">
							<img class="mimg" src="${path}/resources/images/img/free-icon-diary-6393039.png" >
							<a href="<c:url value="/mypage/mydiary?user=${userDTO.user_nicknm }" />">나만의 다이어리</a>
						</li>
			            <li class="myrivew">
			            	<img class="mimg" src="${path}/resources/images/img/free-icon-review-3501894.png" >
			                <a href="<c:url value="/mypage/myreview?user=${userDTO.user_nicknm }" />">나의 리뷰</a>
			            </li>
			            <li class="#">
			                <img class="mimg" src="${path}/resources/images/img/heart_on.png" >
			                <a href="<c:url value="/mypage/myreview?user=${userDTO.user_nicknm }&category=1" />">좋아요 누른 리뷰</a>
			            </li>
			            <li class="#">
			                <img class="mimg" src="${path}/resources/images/img/comment.png" >
			                <a href="<c:url value="/mypage/myreview?user=${userDTO.user_nicknm }&category=2" />">댓글 작성 리뷰</a>
			            </li>
		            </ul>
	            </div>
        
		        <div class="mypost">
		        	<ul>
		        		<li class="mywrite">
		                	<img class="mimg" src="${path}/resources/images/img/KakaoTalk_20230411_161709664.png" alt="게시글">
		                	<a href="<c:url value="/community/freecommunity?user=${userDTO.user_nicknm }&category=myPost" />">내가 쓴 게시글</a>
		                </li>
		              	<li class="mylike">
		                	<img class="mimg" src="${path}/resources/images/img/heart_on.png" alt="좋아요">
		                	<a href="<c:url value="/community/freecommunity?category=myLike" />">좋아요 누른 게시글</a>
		              	</li>
		              	<li class="mycomment">
			                <img class="mimg" src="${path}/resources/images/img/comment.png" alt="댓글">
			                <a href="<c:url value="/community/freecommunity?category=myComment" />">나의 댓글</a>
		                </li>
	                </ul>
                </div>
    
			</div>
		</section>
	</div>
</body>
</html>