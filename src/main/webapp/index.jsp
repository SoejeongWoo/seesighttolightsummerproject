<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>통합 페이지</title>

    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/freeps2/a7rarpress@main/swiper-bundle.min.css">

    <!-- Google Fonts - Poppins -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        body {
            min-height: 100vh;
            background-color: black;
            color: white;
            margin: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }
        .header {
            position: absolute;
            top: 20px; /* Header 위치 */
            left: 20px;
            font-size: 13px;
        }
        .notice-container {
            position: absolute;
            top: 100px; /* 공지사항 위치를 더 위로 이동 */
            left: 20px;
            right: 20px;
            font-size: 14px;
            color: white;
            text-align: center;
            padding: 5px 0; /* 텍스트와 줄 사이의 여백 조정 */
        }
        .notice-container::before,
        .notice-container::after {
            content: "";
            display: block;
            height: 1px;
            background-color: white;
            margin: 3px auto; /* 줄과 텍스트 사이의 여백 조정 */
            width: 70%; /* 줄의 길이 조정 (페이지 폭의 70%) */
        }
        .search-container {
            position: absolute;
            top: 260px; /* 검색창과 버튼 위치를 원래 위치로 유지 */
            display: flex;
            align-items: center;
            justify-content: center;
            width: 100%;
        }
        .search-container .search-icon {
            font-size: 24px;
            color: white;
            margin-right: 8px; /* 아이콘과 검색창 사이의 간격 조정 */
        }
        .search-container input[type='text'] {
            width: 500px;
            height: 30px;
            font-size: 16px;
            border-radius: 15px;
            padding: 5px 10px;
            border: 1px solid #ccc;
            margin-right: 8px; /* 검색창과 버튼 사이의 간격 조정 */
        }
        .search-container input[type='submit'] {
            height: 30px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ccc;
            background-color: #444;
            color: white;
            cursor: pointer;
        }
        .slide-container {
            max-width: 1120px;
            width: 100%;
            padding: 40px 0;
            margin-top: 350px; /* 상단 여백을 원래 위치로 유지 */
        }
        .slide-content {
            margin: 0 40px;
            overflow: hidden;
            border-radius: 25px;
        }
        .card {
            border-radius: 25px;
            background-color: #F0F0F0; /* 카드의 배경색을 회색으로 변경 */
            width: 350px;
            height: 250px;
            display: flex;
            flex-direction: column;
            align-items: center;
            position: relative;
        }
        .image-content {
            width: 100%;
            height: 70%;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 25px 25px 0 0;
            background-color: #FFFFFF; /* 이미지 배경을 하얀색으로 변경 */
            overflow: hidden;
            position: relative;
        }
        .image-content img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .card-content {
            width: 100%;
            height: 30%;
            background-color: #F0F0F0; /* 글씨가 있는 부분의 배경을 회색으로 변경 */
            border-radius: 0 0 25px 25px;
            padding: 10px 14px;
            display: flex;
            align-items: center;
            justify-content: center;
            position: absolute;
            bottom: 0;
            text-align: center;
        }
        .name {
            font-size: 18px;
            font-weight: 500;
            color: #333;
        }
        .swiper-navBtn {
            color: #6E93f7;
            transition: color 0.3s ease;
        }
        .swiper-navBtn:hover {
            color: #4070F4;
        }
        .swiper-navBtn::before,
        .swiper-navBtn::after {
            font-size: 35px;
        }
        .swiper-button-next {
            right: 0;
        }
        .swiper-button-prev {
            left: 0;
        }
        .swiper-pagination-bullet {
            background-color: #6E93f7;
            opacity: 1;
        }
        .swiper-pagination-bullet-active {
            background-color: #4070F4;
        }
        @media screen and (max-width: 768px) {
            .slide-content {
                margin: 0 10px;
            }
            .swiper-navBtn {
                display: none;
            }
        }
    </style>
</head>
<body>

<div class="header">
    <h1>시선</h1>
</div>

<div class="notice-container">
    공지사항: <strong>2024-2 시선 리크루팅</strong>
</div>

<div class="search-container">
    <i class="fas fa-search search-icon"></i>
    <form method="GET" action="hello.jsp" style="display: flex; align-items: center;">
        <input type="text" name="query" placeholder="Search...">
        <input type="submit" value="검색">
    </form>
</div>

<%
    String query = request.getParameter("query");
    if (query != null && !query.trim().isEmpty()) {
        out.println("<h2>Search Results for: " + query + "</h2>");
        out.println("<p>Here are the search results for '" + query + "'</p>");
    }
%>

<div class="slide-container swiper">
    <div class="slide-content">
        <div class="card-wrapper swiper-wrapper">
            <div class="card swiper-slide">
                <div class="image-content">
                    <img src="Rasing.png" alt="">
                </div>
                <div class="card-content">
                    <h2 class="name">장애인의 날 라이징과 협업</h2>
                </div>
            </div>
            <div class="card swiper-slide">
                <div class="image-content">
                    <img src="Chayochayo.png" alt="">
                </div>
                <div class="card-content">
                    <h2 class="name">차요차요와 히딩크 드림필드에서 풋살</h2>
                </div>
            </div>
            <div class="card swiper-slide">
                <div class="image-content">
                    <img src="24-1 Outing.png" alt="">
                </div>
                <div class="card-content">
                    <h2 class="name">24-1 시선 아우팅</h2>
                </div>
            </div>
            <div class="card swiper-slide">
                <div class="image-content">
                    <img src="24-1 Recruiting.png" alt="">
                </div>
                <div class="card-content">
                    <h2 class="name">24-1 시선 리크루팅</h2>
                </div>
            </div>
            <div class="card swiper-slide">
                <div class="image-content">
                    <img src="4th Camp.png" alt="">
                </div>
                <div class="card-content">
                    <h2 class="name">제 4회 선한기술캠프에 참여</h2>
                </div>
            </div>
            <div class="card swiper-slide">
                <div class="image-content">
                    <img src="https://tinypic.host/images/2022/12/19/img_avatar.png" alt="">
                </div>
                <div class="card-content">
                    <h2 class="name">이 이전에 있었던 일들</h2>
                </div>
            </div>
        </div>
    </div>
    <div class="swiper-button-next swiper-navBtn"></div>
    <div class="swiper-button-prev swiper-navBtn"></div>
    <div class="swiper-pagination"></div>
</div>

<!-- Swiper JS -->
<script src="//cdn.jsdelivr.net/gh/freeps2/a7rarpress@main/swiper-bundle.min.js"></script>

<!-- JavaScript -->
<script>
    var swiper = new Swiper(".slide-content", {
        slidesPerView: 3,
        spaceBetween: 25,
        loop: false,
        centerSlide: 'true',
        fade: 'true',
        grabCursor: 'true',
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
            dynamicBullets: true,
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        breakpoints: {
            0: {
                slidesPerView: 1,
            },
            520: {
                slidesPerView: 2,
            },
            950: {
                slidesPerView: 3,
            },
        },
    });
</script>

</body>
</html>
