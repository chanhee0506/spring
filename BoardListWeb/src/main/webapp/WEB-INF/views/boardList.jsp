<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="loginId" value="${sessionScope.id }" />
<c:set var="loginout" value="${sessionScope.id==null ? 'Login' : 'Logout' }" /> 
<c:set var="loginoutlink" value="${sessionScope.id==null ? '/login/login' : '/login/logout' }" /> 
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
    <link rel="stylesheet" href="<c:url value='/resources/board/boardList.css' />" />
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <title>게시판 리스트</title>
    
    <style type="text/css">
    	.boardType {
    		text-align: center;
    		margin-bottom: 20px;
    		color: #33ff33;
    	}
    	
    	a{
    		text-decoration: none;
    		color: white;
    	}
    	
    	.board-container {
    		width: 60%;
    		height: auto;
    		margin: 0 auto;
    	}
    	
    	table {
    		border-collapse: collapse;
    		width: 100%;
    		border-left: 1px solid white;
    		border-right: 1px solid white;
    	}
    	
    	tr:first-child {
		background-color: #33ff33;
		color: black;
		}
		
		th,td {
			width: 300px;
			text-align: center;
			padding: 10px 12px;
			border-bottom: 1px solid #ddd; 
			
		}
		
		.paging-container {
			width: 100%;
			height: 70px;
			display: flex;
			margin-top: 50px;
			margin: auto;
		}
		
		.paging {
			color: white;
			width: 100%;
			align-items: center;
		}
		
		.page {
			
			padding: 6px;
			margin-right: 10px;
		}
		
		.paging > a:hover {
			color: #33ff33;
		}
		
		.gnb > ul > li > a:hover{
    		color: #33ff33;
		}
		
		.p4:hover {
			color: #33ff33;
		}
		
		.title > a:hover {
			color: #33ff33;
		}
		
    </style>
</head>
<body>
    <!-- 헤더 인클루드  -->
    <%-- <%@include file="header.jsp" %> --%>
    
        <header class="header" style="position: sticky; top: 0;">
            <div class="logo">
            <a href="<c:url value='/' />">
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
    
    <div class="boardType">
    	<h1>자유 게시판</h1>
    </div>
    
    <div style="text-align: center;">
    	<div class="board-container">
    		<div class="search-container">
    		
    		</div>
    		
    		<table>
    			<tr>
    				<th class="no">번호</th>
    				<th class="title">제목</th>
    				<th class="writer">이름</th>
    				<th class="regdate">등록일</th>
    				<th class="viewcnt">조회수</th>
    			</tr>    			
    			<c:forEach var="boardDTO" items="${list}">
    				<tr>
    					<td class="no">${boardDTO.bno }</td>
    					<td class="title">
    						<a href="">${boardDTO.title}</a>
    					</td>
    					<td class="writer">${boardDTO.writer}</td>
    					<td class="regdate">
    						<fmt:formatDate value="${boardDTO.reg_date}" pattern="yyyy-MM-dd" type="date"/>
    					</td>
    					<td class="viewcnt">${boardDTO.view_cnt}</td>
    				</tr>
    			</c:forEach>
    		</table>
    		<br>
    		
    		<div class="paging-container">
    			<div class="paging">
    				<c:if test="${totalCnt == null || totalCnt == 0 }">
    					<div>게시물이 없습니다.</div>
    				</c:if>
    				<c:if test="${totalCnt != null || totalCnt != 0 }">
    					<c:if test="${pr.showPrev }">
    						<a class="page" href="<c:url value="/board/list${pr.sc.getQueryString(pr.beginPage-1)}" />">&lt;</a>
    					</c:if>
    					<c:forEach var="i" begin="${pr.beginPage}" end="${pr.endPage}">
    						<a class="page" href="<c:url value="/board/list${pr.sc.getQueryString(i)}" />">${i}</a>
    					</c:forEach>
    					<c:if test="${pr.showNext}">
    						<a class="page" href="<c:url value="/board/list${pr.sc.getQueryString(pr.endPage+1)}" />">&gt;</a>
    					</c:if>
    				</c:if>
    			</div>
    		</div>	
    	</div>
    </div>
</body>
</html>









































