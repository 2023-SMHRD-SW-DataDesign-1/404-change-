<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>나의 채널 판매작품</title>

    <!-- css 연결 -->
    <link rel="stylesheet" href="./MyItemStyle.css">

    <!-- 부트스트랩 CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

</head>

<body>


  <!-- 상단부 -->
  <div class="user">

    <a href="../SUSU/JoinMain.jsp">회원가입</a>
    <a href="../SUSU/Login.jsp">로그인</a>

</div>
<header class="header">
    <!-- 로고 -->
    <div class="logo">
        <a href="../SUSU/Main.jsp">
            <img src="../img/logo_title.PNG" alt="logo">

        </a>

    </div>

    <!-- 검색창 -->
    <div class="main">

        <!-- 검색결과에 따라 게시물 출력하도록 검색어를 전송하는 form 태그 -->
        <form action="">
            <div class="form-group has-search">

                <span class="fa fa-search form-control-feedback">
                    <a href="javascript:prev_search();search_submit();">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-search" viewBox="0 0 16 16">
                            <path
                                d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                        </svg>

                    </a>
                </span>
                <input type="text" class="form-control" placeholder="검색어를 입력하세요">

            </div>

        </form>

    </div>

    <!-- 메뉴 -->
    <div class="user-actions">
        <!-- 채팅 -->
        <a href="../SUSU/Chat.jsp">

            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                class="bi bi-chat-dots" viewBox="0 0 16 16">
                <path
                    d="M5 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" />
                <path
                    d="m2.165 15.803.02-.004c1.83-.363 2.948-.842 3.468-1.105A9.06 9.06 0 0 0 8 15c4.418 0 8-3.134 8-7s-3.582-7-8-7-8 3.134-8 7c0 1.76.743 3.37 1.97 4.6a10.437 10.437 0 0 1-.524 2.318l-.003.011a10.722 10.722 0 0 1-.244.637c-.079.186.074.394.273.362a21.673 21.673 0 0 0 .693-.125zm.8-3.108a1 1 0 0 0-.287-.801C1.618 10.83 1 9.468 1 8c0-3.192 3.004-6 7-6s7 2.808 7 6c0 3.193-3.004 6-7 6a8.06 8.06 0 0 1-2.088-.272 1 1 0 0 0-.711.074c-.387.196-1.24.57-2.634.893a10.97 10.97 0 0 0 .398-2z" />
            </svg>

        </a>
        <!-- 나의 채널 -->
        <a href="../Seller/MychannelMain.jsp">

            <svg id="mychannel" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                class="bi bi-instagram" viewBox="0 0 16 16">
                <path
                    d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
            </svg>
        </a>

        <!-- 장바구니 -->
        <a href="../Mypage/CartList.jsp">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart2"
                viewBox="0 0 16 16">
                <path
                    d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l1.25 5h8.22l1.25-5H3.14zM5 13a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z" />
            </svg>
        </a>

        <!-- 마이페이지 -->
        <a href="../Mypage/CartList.jsp">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                class="bi bi-person-gear" viewBox="0 0 16 16">
                <path
                    d="M11 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0ZM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4Zm.256 7a4.474 4.474 0 0 1-.229-1.004H3c.001-.246.154-.986.832-1.664C4.484 10.68 5.711 10 8 10c.26 0 .507.009.74.025.226-.341.496-.65.804-.918C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4s1 1 1 1h5.256Zm3.63-4.54c.18-.613 1.048-.613 1.229 0l.043.148a.64.64 0 0 0 .921.382l.136-.074c.561-.306 1.175.308.87.869l-.075.136a.64.64 0 0 0 .382.92l.149.045c.612.18.612 1.048 0 1.229l-.15.043a.64.64 0 0 0-.38.921l.074.136c.305.561-.309 1.175-.87.87l-.136-.075a.64.64 0 0 0-.92.382l-.045.149c-.18.612-1.048.612-1.229 0l-.043-.15a.64.64 0 0 0-.921-.38l-.136.074c-.561.305-1.175-.309-.87-.87l.075-.136a.64.64 0 0 0-.382-.92l-.148-.045c-.613-.18-.613-1.048 0-1.229l.148-.043a.64.64 0 0 0 .382-.921l-.074-.136c-.306-.561.308-1.175.869-.87l.136.075a.64.64 0 0 0 .92-.382l.045-.148ZM14 12.5a1.5 1.5 0 1 0-3 0 1.5 1.5 0 0 0 3 0Z" />
            </svg>
        </a>
    </div>


</header>

    <!-- 브랜드 로고(배너) -->
    <div id="banner">

    </div>

    <!-- 프로필 영역 -->
    <div class="user-info-container">
        <!-- 작가 소개 -->
        <div>
            <!-- 프로필 사진 -->
            <img src="../img/profile_img.png" alt="user-profile">
            <!-- 작가 닉네임 -->
            <p id="nickname">작가 닉네임</p>

            <!-- 작가 소개글 -->
            <p>작가 소개글</p>
        </div>

        <div class="follow-box">
            <span>팔로우</span>
            <span class="count">2.1만</span>
            <span>팔로잉</span>
            <span class="count">2,000</span>

        </div>

        <div class="button">
            <!-- 편집하기 버튼을 누르면 채널 편집모드로 변경 -->
        <a href="../Edit/ChannelEdit.jsp">
            <button type="button" id="edit" class="btn btn-light">편집하기</button>
        </a>
            <!--게시물 업로드 페이지로 이동  -->
            <button type="button" id="add" class="btn btn-dark">+</button>
        </div>
    </div>

    <!-- 채널 카테고리 -->
    
    <div class="channel-ctg">
        <a href="./MyNotice.jsp">

            <span>공지사항</span>
        </a>

        <a href="./MychannelMain.jsp">

            <span >피드</span>
        </a>

        <a href="./MyVideo.jsp">

            <span>동영상</span>
        </a>

        <a href="./MyItemList.jsp">

            <span id="select">판매작품</span>
        </a>

    </div>

    <div class="line"></div>


    <!-- 판매작품 피드 -->
    <div class="post-box">
        <div class="row">

            <div class="col-lg-3">

                <div class="card">
                    <a href="../Item/ItemDetail.jsp">

                        <img src="../img/item_img.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-title">상품명</p>
                            <p class="card-text">상품가격</p>
                            <p class="card-text">★4.5</p>

                        </div>
                    </a>
                </div>

            </div>

            <div class="col-lg-3">

                <div class="card">
                    <a href="../Item/ItemDetail.jsp">

                        <img src="../img/item_img.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-title">상품명</p>
                            <p class="card-text">상품가격</p>
                            <p class="card-text">★4.5</p>
                            
                        </div>
                    </a>
                </div>

            </div>

            <div class="col-lg-3">

                <div class="card">
                    <a href="../Item/ItemDetail.jsp">

                        <img src="../img/item_img.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-title">상품명</p>
                            <p class="card-text">상품가격</p>
                            <p class="card-text">★4.5</p>
                            
                        </div>
                    </a>
                </div>

            </div>

            <div class="col-lg-3">

                <div class="card">
                    <a href="../Item/ItemDetail.jsp">

                        <img src="../img/item_img.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-title">상품명</p>
                            <p class="card-text">상품가격</p>
                            <p class="card-text">★4.5</p>
                            
                        </div>
                    </a>
                </div>

            </div>

        </div>




    </div>



    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
        </script>

</body>

</html>