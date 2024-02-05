<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300i,400" rel="stylesheet">
    <title>About us</title>
    <style>
        .center{
            text-align: center;
        }

        .card{
            border: none;
            padding: 10px;
            width: 270px;
            padding-top: 50px;
            margin-top: 50px;
        }

        .flexbox{
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap:50px;
        }

        .card img{
            width: 200px;
            height: 200px;
            border-radius: 50%;
        }

        .card h2{
            padding-top: 40px;
        }
</style>

</head>
<body>
    <div class="center">

 <nav class="navbar">
      <div class="container">
        <a href="chome">HOME</a>
        <a href="gallery">GALLERY</a>
        <a href="about">ABOUT US</a>
        <a href="collab">BUSINESS</a>
        <a href="clogout">LOGOUT</a>
      </div>
    </nav>

<div class="flexbox">
        <div class="card">
            <img src="../images/UMA.jpeg" alt="....">
            <h4>Uma Sri Lakshmi-WEB DESIGNER</h4>
            <h3>I want to make this website a very good place for artists</h3>
        </div>

        <div class="card">
            <img src="../images/jaanu.jpg" alt="....">
            <h4>Jahnavi E-WEB DESIGNER</h4>
            <h3>I am content to be part of this website.. Art is way of expressing <br>
            one feelings through paintings..
            </h3>
        </div>

        <div class="card">
            <img src="../images/sriya.jpg" alt="....">
            <h4>K.A.B.S Sriya</h4>
            <h3>This art gallery is like a home to many artists</h3>
        </div>

    </div>
</div>
   
</body>
</html>