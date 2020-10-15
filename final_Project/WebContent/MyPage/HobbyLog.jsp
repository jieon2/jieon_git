<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Mypage-HobbyLog</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
		<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
		<link rel="stylesheet" href="../assets/css/hobbyLog.css" />
	</head>
	<body id="log">
		<div id="page-wrapper">
	<!-- Header -->
            <section id="header">
               <div class="container">

                  <!-- Logo -->
                     <h1 id="logo"><a href="/index.jsp">MY HOB!</a></h1>

                  <!-- Nav -->
                     <nav id="nav">
                        <ul>
                           <li><a href="/index.jsp"><span>About Us</span></a></li>
                           <li>
                              <a href="/HobbyTest/mbti.jsp"><span>Hobby</span></a>
                              <ul>
                                 <li><a href="/HobbyTest/mbti.jsp">취미 검사</a></li>
                                 <li><a href="/HobbyTest/mbti.jsp">MBTI 검사</a></li>
                              </ul>
                           </li>
                           <li><a href="/MyPage/MyClass.jsp">
                           <span>MY Page</span></a>
                              <ul>
                                 <li><a href="/MyPage/MyClass.jsp">My Class</a></li>
                                 <li><a href="/MyPage/HobbyLog.jsp">활동로그</a></li>
                                 <li><a href="/MyPage/Profile.jsp">내 프로필</a></li>
                                 <li><a href="/MyPage/EditProfile.jsp">프로필수정</a></li>
                              </ul>
                           <li><a href="/ServiceCenter/FAQboard/FAQ.jsp">
                           <span>Service Center</span></a>
                              <ul>
                                 <li><a href="/ServiceCenter/Noticeboard/notice.jsp">공지사항</a></li>
                                 <li><a href="/ServiceCenter/FAQboard/FAQ.jsp">FAQ</a></li>
                                 <li><a href="/ServiceCenter/Q&Aboard/Q&A.jsp">Q&A</a></li>
                              </ul>
                           </li>
                           <li><a href="/community/infoboard/info_board.jsp">
                              <span>community</span></a>
                              <ul>
                                 <li><a href="/community/freeboard/free_board.jsp">자유게시판</a></li>
                                 <li><a href="/community/infoboard/info_board.jsp">정보게시판</a></li>
                              </ul>
                           
                           </li>
                        </ul>
                        <ul class="navtop">   
                                
                                    <li><a href="/Join/LoginForm.jsp">Login</a></li>
				                    <li><a href="/Join/insertForm.jsp">Join</a></li>
                                  <!-- <li><a class="fas fa-key" href="/MyPage/Profile.jsp"></a>-->
                                    <li><a href="/MyPage/Profile.jsp"><img src="../images/gear.png"></a></li>
                                                                            
                        </ul>
                     </nav>

               </div>
            </section>
	
			<!-- 사이드 바 -->
			<div id="my-Sidebar">
        		<h2>마이페이지</h2>
        		<ul>
         		  	<li><a href="../MyPage/Profile.jsp" title="프로필">프로필</a></li>
        		  	<li><a href="../MyPage/MyClass.jsp" title="내 클래스">내 클래스</a></li>
         	  	 	<li><a href="../MyPage/HobbyLog.jsp" title="취미 로그">취미 로그</a></li>
         	  	 	<li><a href="../MyPage/EditProfile.jsp" title="회원 정보 관리">회원 정보 관리</a></li>
        		</ul>
      		</div>
      		
        
       
   
        
        <!-- partial:index.partial.html -->
        <section id="timeline-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="timeline-top">
                        <div class="top-year"><span>2021</span>
                    </div>
                </div>
                <div class="timeline-block">
                    <div class="timeline-events">
                        <br>
                        <div class="event l-event col-md-6 col-sm-6 col-xs-8 ">
                            <span class="thumb fa fa-codepen"></span>
                            <div class=" event-body">
                                <div class="person-image pull-left "><img src="https://cdn1.iconfinder.com/data/icons/user-pictures/100/male3-512.png" alt="person"/></div>
                                <div class="event-content">
                                    <h5 class="text-primary text-left">IT-PLUS programming solution
                                    </h5>
                                    <span class="text-muted text-left" style="display:block; margin: 0">
                                        <small>19 October 2016</small>
                                    </span>
                                    <br><br>
                                    <blockquote class="text-muted text-left">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat ipsum voluptates sapiente beatae non praesentium vitae dolorum qui, reprehenderit harum
                                        <br>
                                        <cite class="text-muted text-right text-bold">- Alex Martin</cite>
                                    </blockquote>
                                </div>
                            </div>
                            <!-- end of event body -->
                            <div class="clear-fix"></div>
                        </div>
                        <!-- end of left event -->
                        <div class="row"></div>
                        <div class="event r-event col-md-6 col-sm-6 col-xs-8 ">
                            <span class="thumb fa fa-facebook"></span>
                            <div class=" event-body">
                                <div class="person-image pull-left "><img src="https://cdn1.iconfinder.com/data/icons/user-pictures/100/male3-512.png" alt="person"/></div>
                                <div class="event-content">
                                    <h5 class="text-primary text-left">IT-PLUS programming solution
                                    </h5>
                                    <span class="text-muted text-left" style="display:block; margin: 0">
                                        <small>19 October 2016</small>
                                    </span>
                                    <br><br>
                                    <blockquote class="text-muted text-left">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat ipsum voluptates sapiente beatae non praesentium vitae dolorum qui, reprehenderit harum
                                        <br>
                                        <cite class="text-muted text-right text-bold">- Alex Martin</cite>
                                    </blockquote>
                                </div>
                            </div>
                        </div>
                        <!-- end of right event <-->
                        <div class="clearfix"></div>
                    </-->
                    <div class="row"></div>
                    <div class="event l-event col-md-6 col-sm-6 col-xs-8 ">
                        <span class="thumb fa fa-twitter"></span>
                        <div class=" event-body">
                            <div class="person-image pull-left "><img src="https://cdn1.iconfinder.com/data/icons/user-pictures/100/male3-512.png" alt="person"/></div>
                            <div class="event-content">
                                <h5 class="text-primary text-left">IT-PLUS programming solution
                                </h5>
                                <span class="text-muted text-left" style="display:block; margin: 0">
                                    <small>19 October 2016</small>
                                </span>
                                <br><br>
                                <blockquote class="text-muted text-left">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat ipsum voluptates sapiente beatae non praesentium vitae dolorum qui, reprehenderit harum
                                    <br>
                                    <cite class="text-muted text-right text-bold">- Alex Martin</cite>
                                </blockquote>
                            </div>
                        </div>
                    </div>
                    <!-- end of left event <-->
                    <div class="clearfix"></div>
                    <div class="row"></div>
                    <div class="event r-event col-md-6 col-sm-6 col-xs-8 ">
                        <span class="thumb fa fa-codepen"></span>
                        <div class=" event-body">
                            <div class="person-image pull-left "><img src="https://cdn1.iconfinder.com/data/icons/user-pictures/100/male3-512.png" alt="person"/></div>
                            <div class="event-content">
                                <h5 class="text-primary text-left">IT-PLUS programming solution
                                </h5>
                                <span class="text-muted text-left" style="display:block; margin: 0">
                                    <small>19 October 2016</small>
                                </span>
                                <br><br>
                                <blockquote class="text-muted text-left">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat ipsum voluptates sapiente beatae non praesentium vitae dolorum qui, reprehenderit harum
                                    <br>
                                    <cite class="text-muted text-right text-bold">- Alex Martin</cite>
                                </blockquote>
                            </div>
                        </div>
                    </div>
                    <!-- end of right event <-->
                    <div class="clearfix"></div>
               
            </div>
       <!-- partial --><script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
       <script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.0/TweenMax.min.js'></script><script src="../assets/js/HobbyLog.js"></script>
            
            </div>
            </div>
        </section>
        
</body>
</html>