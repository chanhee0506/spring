<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ottt</title>     
    <script src="./script/jquery-3.6.1.min.js"></script>
    <script src="./script/script.js"></script>
    <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
    crossorigin="anonymous">
    <link rel="stylesheet" href="./resources/css/review.css" >  
  </head>
  <body style="background-color: #202020; color: #fff;">
    <div class="wrap">
      <header>
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
              <a href="#">게시판</a>
            </li>
          </ul>
        </nav>
        <div class="h-icon">
          <ul>
            <li>
              <a class="p1" href="#">
                 <img src="./resources/img/search02.png" alt="검색"> 
              </a>
            </li>
            <li>
              <a href="#">
                <img src="./resources/img/user01.png" alt="내 정보">
              </a>
            </li>
          </ul>
        </div>
      </header>
    </div>
    <section class="sec01">      
      <div class="banner">
        <div class="banner-header">
            <p>
              어디서 보나요?              
            </p>
        </div>
        <div class="banner-body">
          <a href="#">
            <img class="netfilx" src="./resources/img/넷플릭스.png" alt="넷플릭스아이콘">
          </a>
          <a href="#">
            <img class="watcha" src="./resources/img/왓챠.png" alt="왓챠아이콘">
          </a>
        </div>
      </div>      
      
      <div class="main-img">
        <img src="./resources/img/서부 전선 이상 없다.png" alt="서부 전선 이상 없다 이미지">
      </div>

      <div class="info">
        <ul>
          <li class="info-title">
            <h1>서부 전선 이상 없다.</h1>
            <h4>Im Westen nichts Neues</h4>
          </li>
          <br>
          <li class="info-detail">
            <span>2023·</span>
            <span>미국·</span>
            <span>전쟁·</span>
            <span>148분·</span>
            <span>청불</span>
          </li>
          <br>
          <li class="info-director">
            <span>감독 :&nbsp;</span>
            <span>
              <a href="#">에드워드 버거</a>
            </span>
          </li>
          <li class="info-main_actor">
            <span>주연 :&nbsp;</span>
            <span>
              <a href="#">펠릭스 카머러,&nbsp;</a>
            </span>
            <span>
              <a href="#">알브레히트 슈흐</a>
            </span>
          </li>
          <li class="info-supporting_actor">
            <span>조연 :&nbsp;</span>
            <span>
              <a href="#">데비트 슈트리조,&nbsp;</a>                          
            </span>            
            <span>
              <a href="#">아드리안 그뤼</a>
            </span>
          </li>
        </ul>
      </div>
    </section>

    <section class="sec02">
      <div class="review">
        <div class="advertisement">
          <p>광고</p>
        </div>
        <p class="review-count">
          총 7개의 리뷰가 있습니다.
        </p>
        <br>
        <div class="review-box">
          <div class="review-box-header">
            <div class="user-icon">
              <img src="./resources/img/user.png" alt="유저 이미지파일">
            </div>
            <div class="user-name">
              <a href="#">
                유저 닉네임
              </a>
            </div>
            <ul>
              <li>
                <div class="starpoint_wrap">
                  <div class="starpoint_box">
                    <label for="starpoint_1" class="label_star" title="0.5"><span class="blind">0.5점</span></label>
                    <label for="starpoint_2" class="label_star" title="1"><span class="blind">1점</span></label>
                    <label for="starpoint_3" class="label_star" title="1.5"><span class="blind">1.5점</span></label>
                    <label for="starpoint_4" class="label_star" title="2"><span class="blind">2점</span></label>
                    <label for="starpoint_5" class="label_star" title="2.5"><span class="blind">2.5점</span></label>
                    <label for="starpoint_6" class="label_star" title="3"><span class="blind">3점</span></label>
                    <label for="starpoint_7" class="label_star" title="3.5"><span class="blind">3.5점</span></label>
                    <label for="starpoint_8" class="label_star" title="4"><span class="blind">4점</span></label>
                    <label for="starpoint_9" class="label_star" title="4.5"><span class="blind">4.5점</span></label>
                    <label for="starpoint_10" class="label_star" title="5"><span class="blind">5점</span></label>
                    <input type="radio" name="starpoint" id="starpoint_1" class="star_radio">
                    <input type="radio" name="starpoint" id="starpoint_2" class="star_radio">
                    <input type="radio" name="starpoint" id="starpoint_3" class="star_radio">
                    <input type="radio" name="starpoint" id="starpoint_4" class="star_radio">
                    <input type="radio" name="starpoint" id="starpoint_5" class="star_radio">
                    <input type="radio" name="starpoint" id="starpoint_6" class="star_radio">
                    <input type="radio" name="starpoint" id="starpoint_7" class="star_radio">
                    <input type="radio" name="starpoint" id="starpoint_8" class="star_radio">
                    <input type="radio" name="starpoint" id="starpoint_9" class="star_radio">
                    <input type="radio" name="starpoint" id="starpoint_10" class="star_radio">
                    <span class="starpoint_bg"></span>
                  </div>
                </div>
              </li>
              <li>
                <div class="heart">        
                    <div>
                      <div class="heart_img"></div>
                    </div>             
                </div>
              </li>
              <li>
                <div class="comment">
                  <a href="#">
                    <img src="./resources/img/comment.png" alt="아이콘">
                  </a>
                </div>
              </li>
            </ul>
          </div>
          <div class="review-box-body">
            <p class="review-box-text">"내용 들어갈 자리"</p>
          </div>
          <div class="review-box-footer">
            <div>
              <ul>
                <li>
                  <div class="like">
                    <img src="./resources/img/좋아요.png" alt="좋아요아이콘">
                  </div>
                  <div class="like-count">
                    <p>
                      9999개
                    </p>
                  </div>
                </li>
                <li>
                  <div class="footer-comment">
                    <img src="./resources/img/댓글.png" alt="댓글아이콘">
                  </div>
                  <div class="comment-count">
                    <p>
                      9999개
                    </p>
                  </div>
                </li>
              </ul>
            </div>
            <div>
              <ul>
                <li>
                  <div class="report">
                    <a href="#">
                      <img src="./resources/img/신고하기.png" alt="신고">
                      <p>신고</p>
                    </a>
                  </div>
                </li>
                <li>
                  <div class="add-comment">
                    <a href="#">
                      <img src="./resources/img/댓글.png" alt="댓글달기">
                      <p>댓글달기</p>
                    </a>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
          <br>
            <div class="review-box">
              <div class="review-box-header">
                <div class="user-icon">
                  <img src="./resources/img/user.png" alt="유저 이미지파일">
                </div>
                <div class="user-name">
                  <a href="#">
                    유저 닉네임
                  </a>
                </div>
                <ul>
                  <li>
                    <div class="point">
                      <img src="./resources/img/별점 3점 .PNG" alt="3점">
                      <p>3/5</p>
                    </div>
                  </li>
                  <li>
                    <div class="heart">        
                        <div>
                          <div class="heart_img"></div>
                        </div>             
                    </div>
                  </li>
                  <li>
                    <div class="comment">
                      <a href="#">
                        <img src="./resources/img/comment.png" alt="아이콘">
                      </a>
                    </div>
                  </li>
                </ul>
              </div>
              <div class="review-box-body">
                <p class="review-box-text">"내용 들어갈 자리"</p>
              </div>
              <div class="review-box-footer">
                <div>
                  <ul>
                    <li>
                      <div class="like">
                        <img src="./resources/img/좋아요.png" alt="좋아요아이콘">
                      </div>
                      <div class="like-count">
                        <p>
                          9999개
                        </p>
                      </div>
                    </li>
                    <li>
                      <div class="footer-comment">
                        <img src="./resources/img/댓글.png" alt="댓글아이콘">
                      </div>
                      <div class="comment-count">
                        <p>
                          9999개
                        </p>
                      </div>
                    </li>
                  </ul>
                </div>
                <div>
                  <ul>
                    <li>
                      <div class="report">
                        <a href="#">
                          <img src="./resources/img/신고하기.png" alt="신고">
                          <p>신고</p>
                        </a>
                      </div>
                    </li>
                    <li>
                      <div class="add-comment">
                        <a href="#">
                          <img src="./resources/img/댓글.png" alt="댓글달기">
                          <p>댓글달기</p>
                        </a>
                      </div>
                    </li>
                  </ul>
                </div>
              </div> 
          </div>         
          <br>
          <div class="review-box">
            <div class="review-box-header">
              <div class="user-icon">
                <img src="./resources/img/user.png" alt="유저 이미지파일">
              </div>
              <div class="user-name">
                <a href="#">
                  유저 닉네임
                </a>
              </div>
              <ul>
                <li>
                  <div class="point">
                    <img src="./resources/img/별점 5점 .PNG" alt="3점">
                    <p>5/5</p>
                  </div>
                </li>
                <li>
                  <div class="heart">        
                      <div>
                        <div class="heart_img"></div>
                      </div>             
                  </div>
                </li>
                <li>
                  <div class="comment">
                    <a href="#">
                      <img src="./resources/img/comment.png" alt="아이콘">
                    </a>
                  </div>
                </li>
              </ul>
            </div>
            <div class="review-box-body">
              <p class="review-box-text">"내용 들어갈 자리"</p>
            </div>
            <div class="review-box-footer">
              <div>
                <ul>
                  <li>
                    <div class="like">
                      <img src="./resources/img/좋아요.png" alt="좋아요아이콘">
                    </div>
                    <div class="like-count">
                      <p>
                        9999개
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="footer-comment">
                      <img src="./resources/img/댓글.png" alt="댓글아이콘">
                    </div>
                    <div class="comment-count">
                      <p>
                        9999개
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
              <div>
                <ul>
                  <li>
                    <div class="report">
                      <a href="#">
                        <img src="./resources/img/신고하기.png" alt="신고">
                        <p>신고</p>
                      </a>
                    </div>
                  </li>
                  <li>
                    <div class="add-comment">
                      <a href="#">
                        <img src="./resources/img/댓글.png" alt="댓글달기">
                        <p>댓글달기</p>
                      </a>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <br>
          <div class="review-box">
            <div class="review-box-header">
              <div class="user-icon">
                <img src="./resources/img/user.png" alt="유저 이미지파일">
              </div>
              <div class="user-name">
                <a href="#">
                  유저 닉네임
                </a>
              </div>
              <ul>
                <li>
                  <div class="point">
                    <img src="./resources/img/별점 2점 .PNG" alt="3점">
                    <p>2/5</p>
                  </div>
                </li>
                <li>
                  <div class="heart">        
                      <div>
                        <div class="heart_img"></div>
                      </div>             
                  </div>
                </li>
                <li>
                  <div class="comment">
                    <a href="#">
                      <img src="./resources/img/comment.png" alt="아이콘">
                    </a>
                  </div>
                </li>
              </ul>
            </div>
            <div class="review-box-body">
              <p class="review-box-text">"내용 들어갈 자리"</p>
            </div>
            <div class="review-box-footer">
              <div>
                <ul>
                  <li>
                    <div class="like">
                      <img src="./resources/img/좋아요.png" alt="좋아요아이콘">
                    </div>
                    <div class="like-count">
                      <p>
                        9999개
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="footer-comment">
                      <img src="./resources/img/댓글.png" alt="댓글아이콘">
                    </div>
                    <div class="comment-count">
                      <p>
                        9999개
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
              <div>
                <ul>
                  <li>
                    <div class="report">
                      <a href="#">
                        <img src="./resources/img/신고하기.png" alt="신고">
                        <p>신고</p>
                      </a>
                    </div>
                  </li>
                  <li>
                    <div class="add-comment">
                      <a href="#">
                        <img src="./resources/img/댓글.png" alt="댓글달기">
                        <p>댓글달기</p>
                      </a>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <br>
          <div class="review-box">
            <div class="review-box-header">
              <div class="user-icon">
                <img src="./resources/img/user.png" alt="유저 이미지파일">
              </div>
              <div class="user-name">
                <a href="#">
                  유저 닉네임
                </a>
              </div>
              <ul>
                <li>
                  <div class="point">
                    <img src="./resources/img/별점 1점 .PNG" alt="3점">
                    <p>1/5</p>
                  </div>
                </li>
                <li>
                  <div class="heart">        
                      <div>
                        <div class="heart_img"></div>
                      </div>             
                  </div>
                </li>
                <li>
                  <div class="comment">
                    <a href="#">
                      <img src="./resources/img/comment.png" alt="아이콘">
                    </a>
                  </div>
                </li>
              </ul>
            </div>
            <div class="review-box-body">
              <p class="review-box-text">"내용 들어갈 자리"</p>
            </div>
            <div class="review-box-footer">
              <div>
                <ul>
                  <li>
                    <div class="like">
                      <img src="./resources/img/좋아요.png" alt="좋아요아이콘">
                    </div>
                    <div class="like-count">
                      <p>
                        9999개
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="footer-comment">
                      <img src="./resources/img/댓글.png" alt="댓글아이콘">
                    </div>
                    <div class="comment-count">
                      <p>
                        9999개
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
              <div>
                <ul>
                  <li>
                    <div class="report">
                      <a href="#">
                        <img src="./resources/img/신고하기.png" alt="신고">
                        <p>신고</p>
                      </a>
                    </div>
                  </li>
                  <li>
                    <div class="add-comment">
                      <a href="#">
                        <img src="./resources/img/댓글.png" alt="댓글달기">
                        <p>댓글달기</p>
                      </a>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <br>
          <div class="review-box">
            <div class="review-box-header">
              <div class="user-icon">
                <img src="./resources/img/user.png" alt="유저 이미지파일">
              </div>
              <div class="user-name">
                <a href="#">
                  유저 닉네임
                </a>
              </div>
              <ul>
                <li>
                  <div class="point">
                    <img src="./resources/img/별점 4점 .PNG" alt="3점">
                    <p>4/5</p>
                  </div>
                </li>
                <li>
                  <div class="heart">        
                      <div>
                        <div class="heart_img"></div>
                      </div>             
                  </div>
                </li>
                <li>
                  <div class="comment">
                    <a href="#">
                      <img src="./resources/img/comment.png" alt="아이콘">
                    </a>
                  </div>
                </li>
              </ul>
            </div>
            <div class="review-box-body">
              <p class="review-box-text">"내용 들어갈 자리"</p>
            </div>
            <div class="review-box-footer">
              <div>
                <ul>
                  <li>
                    <div class="like">
                      <img src="./resources/img/좋아요.png" alt="좋아요아이콘">
                    </div>
                    <div class="like-count">
                      <p>
                        9999개
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="footer-comment">
                      <img src="./resources/img/댓글.png" alt="댓글아이콘">
                    </div>
                    <div class="comment-count">
                      <p>
                        9999개
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
              <div>
                <ul>
                  <li>
                    <div class="report">
                      <a href="#">
                        <img src="./resources/img/신고하기.png" alt="신고">
                        <p>신고</p>
                      </a>
                    </div>
                  </li>
                  <li>
                    <div class="add-comment">
                      <a href="#">
                        <img src="./resources/img/댓글.png" alt="댓글달기">
                        <p>댓글달기</p>
                      </a>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <br>
          <div class="review-box">
            <div class="review-box-header">
              <div class="user-icon">
                <img src="./resources/img/user.png" alt="유저 이미지파일">
              </div>
              <div class="user-name">
                <a href="#">
                  유저 닉네임
                </a>
              </div>
              <ul>
                <li>
                  <div class="point">
                    <img src="./resources/img/별점 5점 .PNG" alt="3점">
                    <p>5/5</p>
                  </div>
                </li>
                <li>
                  <div class="heart">        
                      <div>
                        <div class="heart_img"></div>
                      </div>             
                  </div>
                </li>
                <li>
                  <div class="comment">
                    <a href="#">
                      <img src="./resources/img/comment.png" alt="아이콘">
                    </a>
                  </div>
                </li>
              </ul>
            </div>
            <div class="review-box-body">
              <p class="review-box-text">"내용 들어갈 자리"</p>
            </div>
            <div class="review-box-footer">
              <div>
                <ul>
                  <li>
                    <div class="like">
                      <img src="./resources/img/좋아요.png" alt="좋아요아이콘">
                    </div>
                    <div class="like-count">
                      <p>
                        9999개
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="footer-comment">
                      <img src="./resources/img/댓글.png" alt="댓글아이콘">
                    </div>
                    <div class="comment-count">
                      <p>
                        9999개
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
              <div>
                <ul>
                  <li>
                    <div class="report">
                      <a href="#">
                        <img src="./resources/img/신고하기.png" alt="신고">
                        <p>신고</p>
                      </a>
                    </div>
                  </li>
                  <li>
                    <div class="add-comment">
                      <a href="#">
                        <img src="./resources/img/댓글.png" alt="댓글달기">
                        <p>댓글달기</p>
                      </a>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
      </div>
    </section>

    <footer>

    </footer>    
        
    </div>

    <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"
    ></script>
  </body>
</html>