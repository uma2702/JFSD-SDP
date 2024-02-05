<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Business</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
  <link rel="stylesheet" type="text/css" href="css/c1.css">
 
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300i,400" rel="stylesheet">
    <style>
       .container1 {
          display: flex;
           align-items: center;
           justify-content: flex-start;
           margin-top: 80px;
}

img {
max-width: 100%;
max-height: 100%;
margin-left: 100px;

float: left;

}

.bg-img {
    
    background-image: url("../images/cbg.jpg");
    min-height: fit-content;
    
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    
  }
.text {
font-size: 30px;
float: right;
margin-left: 50px;
font-family: 'Didot', serif;
font-style: italic;
font-weight: bold; 
}


 
    </style>
</head>
<body>

 <br>
    <nav class="navbar">
      <div class="container">
        <a href="chome">HOME</a>
        <a href="gallery">GALLERY</a>
        <a href="about">ABOUT US</a>
        <a href="collab">BUSINESS</a>
        <a href="clogout">LOGOUT</a>
      </div>
    </nav>
   
    
    <div class="bg-img">
      <div class="container1">
        <div class="image">
          <img src="../images/collb1.jpg">
        </div>
        <div class="text">
          <p> You can create your art portfolio using our Website..</p>
               <p>You can publish and sell your Artworks..</p> 
               <p>FollowUp your designs using simple and easy means..</p>
               <br></br>
               <a class="button" href="plogin">Get Started</a>
      
             <br></br>
        </div>
      </div>

      
      
    </div>
</body>
</html>