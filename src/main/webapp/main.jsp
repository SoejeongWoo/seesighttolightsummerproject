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
            margin-top : 20%;
            width : 50%;
            height : 50%;
            background-color: black;
            border-radius: 50%;
            margin-left: 5%;
            float : left;
        }

        .in_circle{
            margin-top : 20%;
            width : 30%;
            height : 30%;
            background-color : #D9D9D9;
            border-radius: 50%;
            margin-left : 20%;
            float : left;
        }


    </style>
    <title>Title</title>
</head>
<body style = "background-image: url('images/background.png')">
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

</body>
</html>
