<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>MyPage</title>
		<meta charset="utf-8" />
		
		<link rel="stylesheet" href="../assets/css/Myclass.css" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		
			
	</head>
	<body class="no-sidebar is-preload" style="overflow-x:hidden">
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
      		
      
			<!-- Main -->
			
			
			<div class="swiper">
			
			<h2>수강중인 클래스</h2>
<div class="siema">
  <div><img src="../images/surf.jpg" alt="Siema image" /></div>
  <div><img src="../images/climbing.jpg" alt="Siema image"/></div>
  <div><img src="../images/swim.jpg" alt="Siema image" /></div>
  <div><img src="https://pawelgrzybek.github.io/siema/assets/siema--yellow.svg" alt="Siema image" /></div>
  <div><img src="https://pawelgrzybek.github.io/siema/assets/siema--pink.svg" alt="Siema image" /></div>
  <div><img src="https://pawelgrzybek.github.io/siema/assets/siema--yellow.svg" alt="Siema image" /></div>
  <div><img src="https://pawelgrzybek.github.io/siema/assets/siema--pink.svg" alt="Siema image" /></div>
  <div><img src="https://pawelgrzybek.github.io/siema/assets/siema--yellow.svg" alt="Siema image" /></div>
  <div><img src="https://pawelgrzybek.github.io/siema/assets/siema--pink.svg" alt="Siema image" /></div>
  <div><img src="https://pawelgrzybek.github.io/siema/assets/siema--yellow.svg" alt="Siema image" /></div>
  <div><img src="https://pawelgrzybek.github.io/siema/assets/siema--pink.svg" alt="Siema image" /></div>
  <div><img src="https://pawelgrzybek.github.io/siema/assets/siema--yellow.svg" alt="Siema image" /></div>
</div>

<button class="prev"> &nbsp;<&nbsp;</button>
<button class="next">&nbsp;>&nbsp;</button>




<!-- partial -->
  <script src='https://pawelgrzybek.github.io/siema/assets/siema.min.js'></script><script  src="../assets/js/Myclass.js"></script>
</div>
	
</body>
</html>