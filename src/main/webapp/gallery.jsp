<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gallery</title>
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300i,400" rel="stylesheet">
    <style>
        body {
           background: #ECE9E6;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #FFFFFF, #ECE9E6);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #FFFFFF, #ECE9E6); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

        }
        
        .slider-container {
            width: 60%;
            height: 500px;
            margin: 20px auto;
            background-image: url("/images/artist1.jpg");
            background-size: cover;
            background-position: center;
            animation: img 20s linear infinite, fade 20s infinite alternate;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
        }
        .slider-container:hover{
            transform: scale(1.05);
            box-shadow: 0 0 20px rgba(1, 1, 1, 2.5);
        }
        
        @keyframes img {
            0% {
                background-image: url("/images/artist1.jpg");
            }
            20% {
                background-image: url("/images/artist2.jpg");
            }
            40% {
                background-image: url("/images/4.jpg");
            }
            60% {
                background-image: url("/images/2.jpg");
            }
            80% {
                background-image: url("/images/artist4.jpg");
            }
            100% {
                background-image: url("/images/artist3.jpg");
            }
        }
        
        @keyframes fade {
            0%, 100% {
                opacity: 0.7;
            }
            50% {
                opacity: 1;
            }
        }
        
        .destinations-container {
            display: flex;
            flex-wrap: nowrap;
            justify-content: space-between;
            margin: 20px auto;
            width: 100%;
        }
        
        .destination {
            width: calc(30% - 20px); /* Adjust width and spacing as needed */
            margin: 10px;
            padding: 20px;
            border: 3px solid #ccc;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            text-align: center;
            background-color: #fff;
            transition: transform 0.3s, box-shadow 0.3s;
            position: relative;
            height: 450px;
        }
        
        .destination:hover {
            transform: translateY(-5px);
            transform: scale(1.05);
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.3);
        }
        
        .destination img {
            width: 100%;
            max-width: 100%;
            height: 250px;
        }
        
        .destination a {
            position: absolute;
            bottom: 20px;
            left: 50%;
            transform: translateX(-50%);
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            opacity: 0;
            transition: opacity 0.3s;
        }
        
        .destination:hover a {
            opacity: 1;
        }
        
        .destinations-container .destination:not(:hover) img {
            opacity: 0.5;
        }
        
        .destination-title {
            font-size: 18px;
            font-weight: bold;
            color: #333;
            margin-top: 10px;
        }
        
        .destination-description {
            font-size: 14px;
            text-align: left;
            color: #666;
            margin-top: 25px;
        }
        
        .destination:nth-child(odd) {
            background-color: #f2f2f2;
        }
        
        .destination:nth-child(even) {
            background-color: #fff;
        }

        .container-video {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            
        }
        
        .row {
            display: flex;
            flex-wrap: nowrap;
            gap: 20px;
            justify-content: space-between;
            align-items: center;
        }
        
        .col-md-6 {
            width: calc(100% - 20px);
            padding: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            background-color: #fff;
            height: auto;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        
        .col-md-6:hover {
            transform: translateY(-20px);
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.3);
        }
        .col-md-6 video {
            width: 100%;
            transition: opacity 0.3s;
        }        
        .col-md-6a h2 {
            font-size: 24px;
            margin-top: 10px;
            text-decoration-line: underline;
        }
        
        .col-md-6a p {
            font-size: 14px;
            color: #666;
            margin-top: 10px;
        }
        
        .gallery {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
            padding: 20px;
            margin-top: 60px;
        }

        .card {
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            overflow: hidden;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            height: 500px; /* Fixed card height */
        }
        .card:hover{

            transform: scale(1.05);
        }

        .card img {
            width: 100%;
            height: 70%;
            object-fit: cover; /* Maintain aspect ratio while covering */
        }

        .card-info {
            padding: 15px;
        }

        .photo-name {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .photo-price {
            font-size: 16px;
        }

        .view-button {
    display: block;
    text-align: center;
    background-color: #007bff;
    color: #fff;
    padding: 10px;
    text-decoration: none;
    border-radius: 5px;
    margin-top: 10px;
}

.view-button:hover {
    background-color: #0056b3;
}

        
    </style>
      <script>
        function myFunction() {
            var input, filter, cards, i, name, desc;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            cards = document.querySelectorAll(".card");

            cards.forEach(function (card) {
                name = card.querySelector(".photo-name");
                desc = card.querySelector(".photo-desc");
                
                
                if (name.textContent.toUpperCase().indexOf(filter) > -1 || desc.textContent.toUpperCase().indexOf(filter) > -1) {
                    card.style.display = "block";
                } else {
                    card.style.display = "none";
                }
            });
        }
    </script>
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
    </nav><br>
    <br>
    
    <br>
    
    <div class="slider-container"></div>
     <h3 align="center"><u><b>Arts</b></u></h3>
  <div class=""container">
  
    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search by Art Name or Art Type"
    style="width: 100%; max-width: 1600px; margin: 0 auto; padding: 20px;font-size: 16px;">
<span id="searchIcon">🔍</span>
    
</div>
    <div class="gallery">
    <c:forEach items="${artinfo}" var="art" varStatus="loop">
        <div class="card">
            <img src="displayartimg?id=<c:out value='${art.id}' ></c:out>" class="card-image" />
            <div class="card-info">
                <div class="photo-name">${art.name}</div>
                <div class="photo-price">${art.price}</div>
                <a href="qrcode" class="view-button">Pay</a>
                     
            </div>
        </div>
        </c:forEach>
    </div>
   
    <br>
    <br>
    <div class="container-video">
        <div class="row">
            <div class="col-md-6">
                <video controls width="100%">
                    <source src="/images/CANVA.mp4" type="video/mp4">
                    Your browser does not support the video tag.
                </video>
            </div>
            <div class="col-md-6a">
                <h2>Exploring the Art of Motion</h2>
                <p>Dive into a world where art comes alive through motion. Our latest video captures the essence of fluidity and creativity in every brushstroke, offering a unique perspective on the artistic process.</p>
                <p>Immerse yourself in the captivating journey of colors, shapes, and emotions as our artists transform a blank canvas into a mesmerizing masterpiece.</p>
                <p>Experience the convergence of visual art and technology, where each frame tells a story of inspiration and innovation.</p>
                <a href="#" class="btn btn-primary">Learn More</a>
            </div>
        </div>
    </div>

</body>
</html>