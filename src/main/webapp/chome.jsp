<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<title>ArtBloom</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <link rel="stylesheet" type="text/css" href="css/c1.css">
 
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300i,400" rel="stylesheet">
  </head>
<body>
  
    <nav class="navbar">
      <div class="container">
        <a href="chome">HOME</a>
        <a href="gallery">GALLERY</a>        
        <a href="about">ABOUT US</a>
        
        <a href="collab">BUSINESS</a>
        <a href="clogout">LOGOUT</a>
        <span id="end-text">${cname}</span>
        
      </div>
    </nav>
    
    <div class="bg-img"></div>

  <%@ include file="footer.jsp" %>
  <br> </br>
  <div class="trending">
    <p style="font-size: 36px; font-weight: bold;">TRENDING NOW..</p>
  </div>
  <div class="sliding-gallery">
    <div class="container">
      <div class="sliding-wrapper">
        
      
        <div class="sliding-item">
          <img src="../images/image1.jpg" alt="Trending Image 1">
        </div>
        <div class="sliding-item">
          <img src="../images/image2.jpg" alt="Trending Image 2">
        </div>
        <div class="sliding-item">
          <img src="../images/image3.jpg" alt="Trending Image 3">
        </div>
        <div class="sliding-item">
          <img src="../images/image4.jpg" alt="Trending Image 4">
        </div>
        <div class="sliding-item">
          <img src="../images/image5.jpg" alt="Trending Image 5">
        </div>
        <div class="sliding-item">
          <img src="../images/image6.jpg" alt="Trending Image 6">
        </div>
        <!-- Add more sliding items as needed -->
      </div>
    </div>
  </div>
  <br></br>
  <div class="container1">
    <div class="image">
      <img src="../images/h1.png">
    </div>
    <div class="text">
      <p> Engaging with art bridges the gap between imagination and reality, allowing us to explore the depths of human creativity.</p> 
         <br></br>
        <p>It offers a canvas for emotions, thoughts, and experiences to intertwine, fostering a shared understanding of the diverse world we inhabit.</p>
    </div>
  </div>


<br></br>

<div class="container2">
  <div class="card" style="--clr: #009688">
      <div class="img-box">
          <img src="../images/art.png">
      </div>
      <div class="content">
          <h2>ART</h2>
          <p>
            Art is a diverse range of human activity, and resulting product,
             that involves creative or imaginative talent expressive of technical proficiency,
              beauty, emotional power, or conceptual ideas
          </p>
          <a href="">Read More</a>
      </div>
  </div>
  <div class="card" style="--clr: #FF3E7F">
      <div class="img-box">
          <img src="../images/bnart.png">
      </div>
      <div class="content">
          <h2>Beginners Art</h2>
          <p>
            The elements and principles of design are the building blocks 
            used to create a work of art..
          </p>
          <a href="">Read More</a>
      </div>
  </div>
  <div class="card" style="--clr: #03A9F4">
      <div class="img-box">
          <img src="../images/logo.png">
      </div>
      <div class="content">
          <h2>Aboutus</h2>
          <p>
              Know more AboutUs..
          </p>
          <a href="about">Read More</a>
      </div>
  </div>
</div>

<br> </br>
<div class="container1">
  <div class="image">
    <img src="../images/busin.jpg">
  </div>
  <div class="text">
    <p> Use Our Website to showcase
         your arts...</p> 
         <br></br>
         <a class="button" href="collab">Business Page</a>

       <br></br>
  </div>
</div>



</body>
</html>