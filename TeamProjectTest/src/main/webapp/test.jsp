<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="${path}/resources/css/main/main.css" > 
    <script src="./script/jquery-3.6.1.min.js"></script>
    <script src="./script/script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />

</head>
<body style="background-color: #202020; color: #fff;">
    <div class="wrap"> 
        <div style="background-color: black; text-align: center; height: 1080px;">
            <img src="./image/메인이미지.png" style="width: 1200px; background-position: center; margin-top: 150px;"/>
            <a href="#" class="user-img">
                <!-- <img src="./image/icon/user01.png" class="main-icon"/> -->
            </a>
            <div>
                <img src="./image/메인 OTTT.png" style="position: relative; top: -600px; width: 700px;"/>
            </div>
            <br/>
            <span class="main-search">
                <a href="#"><input type="text"/></a>
                <a href="#" class="search-img">
                    <!-- <img src="/image/icon/search02.png"/> -->
                </a>
            </span>

            <span class="main-cat">
                <a href="#"><div>영화</div></a>
                <a href="#"><div>드라마</div></a>
                <a href="#"><div>예능</div></a>
                <a href="#"><div>애니</div></a>
            </span>
 

        </div>

        <header class="header" style="position: sticky; top: 0;">
            <div class="logo">
            <a href="#">
                <img src="./image/OTTT.png" alt="로고">
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
                    <!-- <img src="./image/icon/search02.png" alt="검색"> -->
                </a>
                </li>
                <li>
                <a href="#">
                    <!-- <img src="./image/icon/user01.png" alt="내 정보"> -->
                </a>
                </li>
            </ul>
            </div>
        </header>

        <section class="sec_2">
            <div style="font-size: 23px; margin-left: 20px; margin-top: 20px;">별점 높은 작품들</div>
            <div class="main-work">
                <button class="left-button1"><img src="./image/왼쪽 화살표.png" /></button>
                <div class="cont01">
                    <div class="posterzip1">
                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/서부전선.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/동감.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/스마트폰을 떨어뜨렸을 뿐인데.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/더 글로리.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/나는 솔로.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/서부전선.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/대외비.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/서부전선.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/동감.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/스마트폰을 떨어뜨렸을 뿐인데.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/더 글로리.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/나는 솔로.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/서부전선.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/대외비.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>
                        

                        
                    </div>
                </div>
                
                <button class="right-button1"><img src="/image/화살표.png"/></button>
            </div>
            <br />
            <div style="font-size: 23px; margin-left: 20px;">지금 HOT한 작품들</div>
            <div class="main-work">
                <button class="left-button2"><img src="./image/왼쪽 화살표.png" /></button>
                <div class="cont01">
                    <div class="posterzip2">
                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/서부전선.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/동감.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/스마트폰을 떨어뜨렸을 뿐인데.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/더 글로리.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/나는 솔로.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/서부전선.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/대외비.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/서부전선.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/동감.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/스마트폰을 떨어뜨렸을 뿐인데.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/더 글로리.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/나는 솔로.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/서부전선.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/대외비.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                
                <button class="right-button2"><img src="/image/화살표.png"/></button>
            </div>
            <br/>
            <div style="font-size: 23px; margin-left: 20px;">추천 작품들</div>
            <div class="main-work">
                <button class="left-button3"><img src="./image/왼쪽 화살표.png" /></button>
                <div class="cont01">
                    <div class="posterzip3">
                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/서부전선.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/동감.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/스마트폰을 떨어뜨렸을 뿐인데.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/더 글로리.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/나는 솔로.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/서부전선.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/대외비.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/서부전선.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/동감.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/스마트폰을 떨어뜨렸을 뿐인데.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/더 글로리.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/나는 솔로.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/서부전선.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="work-info">
                            <a href="#">
                                <img src="./image/인기작/대외비.jpg" class="poster"/>
                                <div class="work-review">
                                    <div><img src="/image/별점.png" /></div>
                                    <div>
                                        <a href="#">찜</a>
                                        <a href="#">리뷰쓰기</a>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                
                <button class="right-button3"><img src="/image/화살표.png"/></button>
            </div>
            
        </section>





    </div>




    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
</body>
</html>