<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MBTI</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel='stylesheet' href='https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css'>

<link rel="stylesheet" href="../assets/css/mbti.css">


</head>

<div class="homepage is-preload">
		<div id="page-wrapper">

			
			<!-- Header -->
            <section id="header">
               <div class="container">

                  
                  <!-- Nav 최종 -->
                     <nav id="nav">
                        <ul>
                           <li><a href="/AboutUs/AboutUs.jsp"><span>About Us</span></a></li>
                           <li>
                              <a href="/HobbyTest/Survey.jsp"><span>Hobby</span></a>
                              <ul>
                                 <li><a href="/HobbyTest/Survey.jsp">취미 검사</a></li>
                                 <li><a href="/HobbyTest/mbti.jsp">MBTI 검사</a></li>
                              </ul>
                           </li>
                           
                           <li><a href="/ServiceCenter/Noticeboard/notice.jsp">
                           <span>Service Center</span></a>
                              <ul>
                                 <li><a href="/ServiceCenter/Noticeboard/notice.jsp">공지사항</a></li>
                                 <li><a href="/ServiceCenter/FAQboard/FAQ.jsp">FAQ</a></li>
                                 <li><a href="/ServiceCenter/Q&Aboard/Q&A.jsp">Q&A</a></li>
                              </ul>
                           </li>
                           <li><a href="/community/freeboard/free_board.jsp">
                              <span>community</span></a>
                              <ul>
                                 <li><a href="/community/freeboard/free_board.jsp">자유게시판</a></li>
                                 <li><a href="/community/infoboard/info_board.jsp">정보게시판</a></li>
                              </ul>
                           
                           </li>
                        </ul> 
                                <ul class="navtop"> 
                        			<%if("admin".equals(session.getAttribute("id"))){ %> <!-- 관리자면 -->
	                                	<li><a href="/admin/memberList.jsp">관리자메뉴</a></li>
	                                	<li><a href="../Join/Logout.jsp">Logout</a></li>
	                                	
                                	<%}else if(session.getAttribute("id")!=null){ %>      <!-- 아이디가 있으면 -->
	                                	<li><a href="../Join/Logout.jsp">Logout</a></li>
	                                	<li><a class="fas fa-user fa-1.5x" href="/MyPage/Profile.jsp"></a></li>
                                	<%}else{%>       
                                	<li><a href="/Join/LoginForm.jsp">Login</a></li>
				                    <li><a href="/Join/insertForm.jsp">Join</a></li>
				                    <%} %>
                                            
                        </ul>
                     </nav>
                     
                     <!-- Logo -->
                     <h1 id="logo"><a href="/index.jsp">MY HOB!</a></h1>
                     
                     
               </div>
            </section>
	<!--  
 			<div id="my-Sidebar">
           <h2>취미 탐색</h2>
              <ul>
                  <li><a href="/HobbyTest/Survey.jsp" >취미 검사</a></li>
        		  <li><a href="/HobbyTest/mbti.jsp" >MBTI</a></li>
                   
              </ul>
         </div> 	
		
	-->
			<div class="container">
		 	
		
			
  <div class="m-container">
  <h2>MBTI</h2>
    <div class="grid">
      <div class="column-xs-12">
        
          
            <div class="grid vertical">
             
              <div class="column-xs-12 column-md-10">
                <div class="image-holder">
                <a href="https://www.16personalities.com/ko">  <img src="../images/mbti-1.jpg" ></a>
                </div>
                <div class="grid">
                  <div class="column-xs-12 column-md-9">
                  <div class="intro show-mobile">
                      <a href="#">
                        <h1 class="m_title"><span class="underline">MBTI 검사하러 가기</span></h1>
                      </a>
                    </div>   
                     
                  	<form action="" class="search-wrapper cf" name="mbti">
				        <input type="text" id="my_mbti" name="my_mbti" placeholder="MBTI 대문자로 입력" >
				        <button type="button" value="입력" onClick="mbtiCheck()">Search</button>
				        
                  		<span id='mbtiMsg' value='test용'></span>

                   </form>
			    
					
                 
                  </div>
                </div>
              </div>
            </div>
         
          
    
          </div>
      </div>
    </div>
  </div>
  


</div>
   
<!-- partial -->
  <script  src="../assets/js/mbti.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
<script>
function mbtiCheck(){
	var result=document.getElementById('my_mbti').value;
	
	var msg="";
	if(result=='INTJ'){
		msg = "언어";
	}else if(result=='INTP'){
		msg = "예술";
	}else if(result=='INFJ'){
		msg = "DIY";
	}else if(result=='INFP'){
		msg = "예술";
	}else if(result=='ISTJ'){
		msg = "DIY";
	}else if(result=='ISFJ'){
		msg = "사진/영상";
	}else if(result=='ISTP'){
		msg = "요리";
	}else if(result=='ISFP'){
		msg = "예술";
	}else if(result=='ENTJ'){
		msg = "스포츠";
	}else if(result=='ENTP'){
		msg = "사진/영상";
	}else if(result=='ENFJ'){
		msg = "스포츠";
	}else if(result=='ENFP'){
		msg = "음악";
	}else if(result=='ESTJ'){
		msg = "언어";
	}else if(result=='ESFJ'){
		msg = "스포츠";
	}else if(result=='ESTP'){
		msg = "음악";
	}else if(result=='ESFP'){
		msg = "음악";
	}else
		msg1="정확한 MBTI를 입력해주세요.";
	
	document.getElementById("mbtiMsg").innerHTML = msg+" 관련된 취미를 추천해드립니다.";
	document.getElementById("mbtiMsg").innerHTML = msg1;
}
</script>
</div>

</body>
</html>