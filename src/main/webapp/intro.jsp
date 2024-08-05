<%--
  Created by IntelliJ IDEA.
  User: 정승희
  Date: 2024-07-31
  Time: 오전 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        .fade-text{
            text-align:center;
            font-size:300%;
            color:white;
            font-weight: bolder;
        }

        .intro1, .intro2{
            opacity : 0;
        }

        .intro1{
            margin-top: 20%;
            animation : fadeInOut 3s ease-in-out;

        }

        .intro2{
            animation: fadeInOut 6.5s ease-in-out;
            margin-top: -8%;
            animation-delay: 4.5s;
        }



        @keyframes fadeInOut {
            0%{
                opacity: 0;
            }
            40%{
                opacity: 1;
            }
            70%{
                opacity: 1;
            }
            100%{
                opacity: 0;
            }
        }

    </style>
    <title>Title</title>
</head>
<body style = background-image:url("images/background.png")>
<div class = "fade-text">
    <div class = "intro1">
        안녕하세요.
        <br>소외된 약자를 위한 IT 솔루션 학회 시선입니다.
    </div>
    <div class = "intro2">
        당신의 시선은 어느 곳을 향해있나요?
    </div>
</div>
</body>
</html>
