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
        .left_out_circle, .right_out_circle{
            position : relative;
            margin-top: -1%;
            width : 8%;
            height : 30%;
            background-color: #D9D9D9;
            border-radius: 50%;
            float : left;
        }

        .left_out_circle{
            margin-left : 42%;
        }

        .right_out_circle{
            margin-left : 1%;
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
        }


    </style>
    <title>Title</title>
</head>
<body style = "background-image: url('images/background.png')">
<script>
</script>
<img src = "images/logo.png" alt = "Logo" style="height : 4%; width: 3%">
<div style = "font-size : 150%; color : #E4DDC0; margin-top: 4%; text-align: center">
    About
</div>
<div style = "font-size : 150%; color : #E4DDC0; margin-top: 8%; padding-left : 22%; float : left">
    Projects
</div>
<div style = "font-size : 150%; color : #E4DDC0; margin-top: 8%; padding-right : 22% ; float : right">
    News
</div>
<div class = "left_out_circle">
    <div class = "mid_circle">
        <div class = "in_circle"></div>
    </div>
</div>
<div class = "right_out_circle">
    <div class = "mid_circle">
        <div class = "in_circle"></div>
    </div>
</div>
<div style = "font-size : 150%; color : #E4DDC0; margin-top: 8%; padding-left : 35%; float : left">
    Members
</div>
<div style = "font-size : 150%; color : #E4DDC0; margin-top: 8% ; padding-right : 35%; float : right">
    Contact us
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