<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.modelDAO.ProductDAO"%>
<%@page import="com.smhrd.modelDTO.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.modelDTO.FeedDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!-- EL 표현식 실행 -->
<%@ page isELIgnored="false"%>

<!-- JSTL 사용하기 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- FeedDAO import하기 -->
<%@page import="com.smhrd.modelDAO.FeedDAO"%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>수수한 사람들</title>

<!-- css 연결 -->
<link rel="stylesheet" href="./MainStyle.css">

<!-- jquery 연결 -->
<script src="https://code.jquery.com/jquery-3.7.0.min.js"
   integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
   crossorigin="anonymous">
   
</script>


<!-- 부트스트랩 CSS only -->
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
   crossorigin="anonymous">

</head>

<body>

   <!-- 상단부 -->
   <div class="user">

      <a href="../SUSU/JoinMain.jsp">회원가입</a> <a href="../SUSU/Login.jsp">로그인</a>

   </div>
   <header class="header">
      <!-- 로고 -->
      <div class="logo">
         <a href="../SUSU/Main.jsp"> <img src="../img/logo_title.PNG"
            alt="logo">

         </a>

      </div>

      <!-- 검색창 -->
      <div class="main">

         <!-- 검색결과에 따라 게시물 출력하도록 검색어를 전송하는 form 태그 -->
         <form action="">
            <div class="form-group has-search">

               <span class="fa fa-search form-control-feedback"> 
               <a href="javascript:prev_search();search_submit();"> 
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                         <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                         </svg>

               </a>
               </span> <input type="text" class="form-control" placeholder="검색어를 입력하세요">

            </div>

         </form>

      </div>

      <!-- 메뉴 -->
      <div class="user-actions">
         <!-- 채팅 -->
         <a href="../SUSU/Chat.jsp"> <svg
               xmlns="http://www.w3.org/2000/svg" width="16" height="16"
               fill="currentColor" class="bi bi-chat-dots" viewBox="0 0 16 16">
                                <path
                  d="M5 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" />
                                <path
                  d="m2.165 15.803.02-.004c1.83-.363 2.948-.842 3.468-1.105A9.06 9.06 0 0 0 8 15c4.418 0 8-3.134 8-7s-3.582-7-8-7-8 3.134-8 7c0 1.76.743 3.37 1.97 4.6a10.437 10.437 0 0 1-.524 2.318l-.003.011a10.722 10.722 0 0 1-.244.637c-.079.186.074.394.273.362a21.673 21.673 0 0 0 .693-.125zm.8-3.108a1 1 0 0 0-.287-.801C1.618 10.83 1 9.468 1 8c0-3.192 3.004-6 7-6s7 2.808 7 6c0 3.193-3.004 6-7 6a8.06 8.06 0 0 1-2.088-.272 1 1 0 0 0-.711.074c-.387.196-1.24.57-2.634.893a10.97 10.97 0 0 0 .398-2z" />
                            </svg>

         </a>
         <!-- 나의 채널 -->
         <a href="../Seller/MychannelMain.jsp"> <svg id="mychannel"
               xmlns="http://www.w3.org/2000/svg" width="16" height="16"
               fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
                                <path
                  d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
                            </svg>
         </a>

         <!-- 장바구니 -->
         <a href="../Mypage/CartList.jsp"> <svg
               xmlns="http://www.w3.org/2000/svg" width="16" height="16"
               fill="currentColor" class="bi bi-cart2" viewBox="0 0 16 16">
                                <path
                  d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l1.25 5h8.22l1.25-5H3.14zM5 13a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z" />
                            </svg>
         </a>

         <!-- 마이페이지 -->
         <a href="../Mypage/CartList.jsp"> <svg
               xmlns="http://www.w3.org/2000/svg" width="16" height="16"
               fill="currentColor" class="bi bi-person-gear" viewBox="0 0 16 16">
                                <path
                  d="M11 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0ZM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4Zm.256 7a4.474 4.474 0 0 1-.229-1.004H3c.001-.246.154-.986.832-1.664C4.484 10.68 5.711 10 8 10c.26 0 .507.009.74.025.226-.341.496-.65.804-.918C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4s1 1 1 1h5.256Zm3.63-4.54c.18-.613 1.048-.613 1.229 0l.043.148a.64.64 0 0 0 .921.382l.136-.074c.561-.306 1.175.308.87.869l-.075.136a.64.64 0 0 0 .382.92l.149.045c.612.18.612 1.048 0 1.229l-.15.043a.64.64 0 0 0-.38.921l.074.136c.305.561-.309 1.175-.87.87l-.136-.075a.64.64 0 0 0-.92.382l-.045.149c-.18.612-1.048.612-1.229 0l-.043-.15a.64.64 0 0 0-.921-.38l-.136.074c-.561.305-1.175-.309-.87-.87l.075-.136a.64.64 0 0 0-.382-.92l-.148-.045c-.613-.18-.613-1.048 0-1.229l.148-.043a.64.64 0 0 0 .382-.921l-.074-.136c-.306-.561.308-1.175.869-.87l.136.075a.64.64 0 0 0 .92-.382l.045-.148ZM14 12.5a1.5 1.5 0 1 0-3 0 1.5 1.5 0 0 0 3 0Z" />
                            </svg>
         </a>
      </div>


   </header>

<% 
String nickname = (String) session.getAttribute("nickname");


FeedDTO fdto = new FeedDTO();
FeedDAO fdao = new FeedDAO();
ArrayList<FeedDTO> lfeed_list = fdao.showAllLikesFeeds();

%>



   <!--@@@@@ 피드 출력 건들어보겠어! -->
   <!-- 피드 목록 -->
   <div class="feed_container">
 <%
     // <c:set var="productlink_list" value="${ProductDAO.showProductLink()}"></c:set>
     // <c:set var="s_list" value="${FeedDAO.showAllSubcriptionFeeds()}"></c:set>
     // <c:set var="lfeed_list" value="${FeedDAO.showAllLikesFeeds()}"></c:set>
%>

      <!--1번 피드  -->
      <!--좋아요순 피드 -->
      <!-- 피드반복시작 -->

 <%   for(int i = 35; i>0; i--){  // <c:forEach begin="1" end="40">%>
 
<% System.out.println(lfeed_list.get(i).getFeed_no()); %>
<% System.out.println(lfeed_list.get(i).getNickname()); %>
<% System.out.println(lfeed_list.get(i).getFeed_image1()); %>
<% System.out.println(lfeed_list.get(i).getText()); %>
<%  String txt ;
	if(lfeed_list.get(i).getText() ==null ){
		txt = " ";
}else{
	txt = lfeed_list.get(i).getText();
}
	
	%>
         <div class="main_feed">

            <!-- 프로필 정보를 클릭하면 채널메인 화면으로 이동 -->
            <div class="profile">
				<input type="hidden" value="<%=lfeed_list.get(i).getFeed_no() %>"> 
               <a href="../Channel/ChannelMain.jsp"> <img id="profile-img"
                  src="../img/profile_img.png" alt="프로필 사진"> <span
                  class="nickname"><%=lfeed_list.get(i).getNickname()   %></span>
               </a>
            </div>

            <!-- 피드 이미지 -->
            <div class="feed-img">
               <!--사진을 클릭하면 피드 상세화면으로 이동 -->
               <a href="../ChannelDetail/FeedDetail.jsp?feed_no=<%=lfeed_list.get(i).getFeed_no() %>"> 
               <img src="../img2/<%= lfeed_list.get(i).getFeed_image1() %>.jpg" class="card-img-top" alt="피드 사진">
               </a>
            </div>

            <!-- 피드 텍스트 -->
            <div class="feed-text">

               <a href="../ChannelDetail/FeedDetail.jsp">
                  <p><%=txt %>></p>
               </a>
            </div>

<% ProductDTO pdto = new ProductDTO();
   ProductDAO pdao = new ProductDAO();
ArrayList<ProductDTO>  item_link = pdao.showItemLink(lfeed_list.get(i).getFeed_no());
   
   %>
<% if (item_link.size() > i) { %>
<% System.out.println( item_link.get(i).getProduct_name()); %>
<% System.out.println( item_link.get(i).getProduct_no()); %>
<% System.out.println( item_link.get(i).getProduct_image1()); %>
<% System.out.println( item_link.get(i).getProduct_name()); %>
<% System.out.println( item_link.get(i).getProduct_price()); %>
            <!-- 상품상세페이지 연결-->
            <div class="feed-info">
               
                  <div class="item_link">
                     <div>
                        <p id="title">상품태그</p>
                     </div>

                     <div class="items">
                        <div class="item">

                           <!-- 상품이미지 -->
                           <a href="../Item/ItemDetail.jsp?Product_no=<%=item_link.get(i).getProduct_no()%>"> 
                              <div class="item-img">
								<input type="hidden" value="<%=item_link.get(i).getProduct_no()  %>">
                                 <img
                                    src="../img2/<%= item_link.get(i).getProduct_image1()%>.jpg "
                                    alt="상품사진">
                              </div> <!-- 상품이름 -->
                              <div class="item_name">

                                 <p><%= item_link.get(i).getProduct_name() %></p>
                              </div> <!-- 상품가격 -->
                              <div class="item_price">

                                 <p>
                                    <b><%= item_link.get(i).getProduct_price() %></b>
                                 </p>
                              </div>
                           </a>

                        </div>
                        <!--item -->
                     </div>
                     <!--items-->
                  </div>
                  <!--item_link-->
               <!--상품반복 끝-->

            </div>
            <!--feed-info(상품링크 끝)-->
         </div>
         <!--메인 피드(좋아요순 정렬끝)-->
<% } %>
  <%} %>





      
      <!--전체 반복 끝-->

   </div>
   <!--feed-container(피드 전체)-->



   <!-- 무한스크롤 js -->
   <script>
      //Javascript
      var count = 0;
      var lfeed_list = FeedDAO.showAllLikesFeeds();
      //스크롤 바닥 감지
      window.onscroll = function(e) {
         //추가되는 임시 콘텐츠
         //window height + window scrollY 값이 document height보다 클 경우,
         if ((window.innerHeight + window.scrollY) >= document.body.offsetHeight) {
            //실행할 로직 (콘텐츠 추가)
            count++;
            var addContent = '<div class="block"><p>' + count
                  + '번째로 추가된 콘텐츠</p></div>';
            //article에 추가되는 콘텐츠를 append
            $('article').append(addContent);
         }
      };
   </script>



   <!-- JavaScript Bundle with Popper -->
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous">
      
   </script>



   <script src="ItemLink.js"></script>
</body>

</html>