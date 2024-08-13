<%--
  Created by IntelliJ IDEA.
  User: 정승희
  Date: 2024-08-02
  Time: 오전 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>

        html, body {
            overflow: hidden;
        }

        .hover_img {
            visibility: hidden;
            opacity: 0;
            transition: opacity 0.5s linear, visibility 0s linear 0.5s;
            position: fixed;
            left: 50%; /* Center horizontally */
            top: 50%;
            transform: translate(-50%, -50%); /* Adjust for offset */
            width: 30vw;
            height: 50vh;
            z-index: 50;
        }

        .menu_text {
            position: absolute;
            font-size: 150%;
            color: #E4DDC0;
        }

        .menu_text:hover .hover_img {
            visibility: visible;
            opacity: 1;
            transition: visibility 0s, opacity 0.5s linear;
        }


        .about_box {
            position: relative;
            margin-top: 5vh;
            text-align: center;
        }


        .about_text {
            font-size: 150%;
            color: #E4DDC0;
            display: inline-block;
            position: relative;
        }


        .about_text:hover .hover_img {
            visibility: visible;
            opacity: 1;
            transition: visibility 0s, opacity 0.5s linear;
        }

        .projects_box {
            position: relative;
            margin-top: 20vh;
            left: 18vw;
        }


        .news_box {
            position: relative;
            margin-top: 20vh;
            left: 73vw;
        }

        .contact_us_box {
            position: relative;
            margin-top: 70vh;
            left: 32vw;
        }

        .members_box {
            position: relative;
            margin-top: 70vh;
            left: 60vw;
        }


        .left_out_circle, .right_out_circle {
            position: fixed;
            margin-top: -50vh;
            width: 8vw;
            height: 30vh;
            background-color: #D9D9D9;
            border-radius: 50%;
            float: left;
        }

        .left_out_circle {
            margin-left: 41vw;
        }

        .right_out_circle {
            margin-left: 50vw;
        }


        .mid_circle{
            position: absolute;
            width : 50%;
            height : 50%;
            background-color: black;
            border-radius: 50%;
            top : 25%;
            left : 25%;
            transform-origin: center center;
            z-index : 10;
        }

        .in_circle{
            position : absolute;
            width : 30%;
            height : 30%;
            background-color : #D9D9D9;
            border-radius: 50%;
            margin-left : 20%;
            top : 35%;
            left : 35%;
            float : left;
            z-index : 15;
        }



    </style>
    <title>Title</title>
</head>
<body style="background-image: url('images/background.png')">
<img src="images/logo.png" alt="Logo" style="height : 30px; width: 40px">
<div class="about_box">
    <div class="about_text">
        About
        <img class="hover_img" alt="about" src="images/about_seesun.jpg">
    </div>
</div>


<div class="projects_box">
    <div class="menu_text">
        Projects
        <img class="hover_img" alt="projects" src="images/projects.jpg">
    </div>
</div>

<div class="news_box">
    <div class="menu_text"> News
        <img class="hover_img" alt="news" src="images/news_seesun.png">
    </div>
</div>


<div class="contact_us_box">
    <div class="menu_text"> Contact Us
        <img class="hover_img" alt="Contact us" src="images/contact_us.jpg">
    </div>
</div>

<div class="members_box">
    <div class="menu_text"> Members
        <img class="hover_img" alt="Members" src="images/about_seesun.jpg">
    </div>
</div>


<div class="left_out_circle">
    <div class = "mid_circle">
        <div class ="in_circle"></div>
    </div>
</div>

<div class="right_out_circle">
    <div class = "mid_circle">
        <div class = "in_circle"></div>
    </div>
</div>

    <script>
    document.addEventListener('mousemove', function (event){
    const circles = document.querySelectorAll('.mid_circle');
    circles.forEach(midCircle => {
        const outCircle = midCircle.parentElement;
        const rect = outCircle.getBoundingClientRect();
        const centerX = rect.left + rect.width/2;
        const centerY = rect.top + rect.height/2;

        const mouseX = event.clientX;
        const mouseY = event.clientY;


        const angle = Math.atan2(mouseY - centerY, mouseX - centerX);

        const radiusX = (rect.width/2) * 0.4;
        const radiusY = (rect.height/2) * 0.4;

        const x = centerX + radiusX * Math.cos(angle) - midCircle.offsetWidth / 2;
        const y = centerY + radiusY * Math.sin(angle) - midCircle.offsetHeight / 2;

        midCircle.style.left =  `${x - rect.left}px` ;
        midCircle.style.top =  `${y - rect.top}px` ;

        const inCircle = midCircle.querySelector('.in_circle');
        if (inCircle) {
            const inCircleRadiusX = (midCircle.offsetWidth / 2) * 0.4; // 수정 가능
            const inCircleRadiusY = (midCircle.offsetHeight / 2) * 0.4; // 수정 가능

            const inCircleX = inCircleRadiusX * Math.cos(angle) + (midCircle.offsetWidth - inCircle.offsetWidth) / 2;
            const inCircleY = inCircleRadiusY * Math.sin(angle) + (midCircle.offsetHeight - inCircle.offsetHeight) / 2;

            inCircle.style.left = `${inCircleX}px`;
            inCircle.style.top = `${inCircleY}px`;
        }
    });
    });



    </script>

</body>
</html>