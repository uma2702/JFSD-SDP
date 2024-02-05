<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" type="text/css" href="css/style.css">
  <link rel="stylesheet" type="text/css" href="css/c1.css">
 
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300i,400" rel="stylesheet">
    <title>oil Paintings</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: white;
        }
        
        
        
     
        
         .destinations-container {
            display: flex;
            flex-wrap: nowrap;
            justify-content: space-between;
            margin: 20px auto;
            width: 100%;
        }
        
        .destination {
            width: calc(30% - 10px); /* Adjust width and spacing as needed */
            margin: 10px;
            padding: 20px;
            border: 3px solid #ccc;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            text-align: center;
            background-color: #fff;
            transition: transform 0.3s, box-shadow 0.3s;
            position: relative;
            height: 400px;
        }
        
        .destination:hover {
            transform: translateY(-5px);
            transform: scale(1.05);
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.3);
        }
        
        .destination img {
            width: 150%;
            max-width: 100%;
            height: 250px;
            margin-left: -10px;
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
            opacity: 0.8;
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

      
    </style>
</head>
<body>

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
    <br>
    <br><br><br>
    <!-- Container for destinations -->
    <div class="destinations-container">
        <!-- First destination container -->
        <div class="destination">
            <img src="/images/rk1.jpg" alt="ARTWORK 1">
            <div class="destination-title">Tallenge - Yashoda - Raja Ravi Varma</div>
            <div class="destination-text">Beautiful Depiction</div>
            <div class="destination-description"><center><b>₹7500</b></center></div>
            <a href="qrcode">Buy Now<span>&rarr;</span></a>
        </div>
        
        <!-- Add more destination containers as needed -->
        <div class="destination">
            <img src="/images/rk2.jpg" alt="ARTWORK 2"><br>
            <div class="destination-title">Divine Love by Nandalal Bose</div>
            <div class="destination-text">Spiritual Connection Portrayed</div>
            <div class="destination-description"><center><b>₹12,500</b></center></div>
            <a href="qrcode">Buy Now<span>&rarr;</span></a>
        </div>

           <div class="destination">
            <img src="/images/rk3.jpg" alt="ARTWORK 3">
            <div class="destination-title">The Divine Pair: Radha and Krishna by Anjolie Ela Menon</div>
             <div class="destination-text">Elegance and Devotion..!!!</div>
            <div class="destination-description"><center><b>₹15,000</b></center></div>
            <a href="qrcode">Buy Now<span>&rarr;</span></a>
          </div>
          <br>
          <div class="destination">
            <img src="/images/rk4.jpg" alt="ARTWORK 4">
            <div class="destination-title">The Enchanting Love of Radha and Krishna by Raja Ravi Varma</div>
            <div class="destination-text">Classic Representation..!!</div>
            <div class="destination-description"><center><b>₹9000</b></center></div>
            <a href="qrcode">Buy Now<span>&rarr;</span></a>
          </div>

          <div class="destination">
            <img src="/images/rk5.jpg" alt="ARTWORK 5">
            <div class="destination-title">Radha ofeering Krishna a Garland by S.G.Vasudev</div>
             <div class="destination-text">Symbolic gesture of Love..!!!</div>
            <div class="destination-description"><center><b>₹13,500</b></center></div>
            <a href="qrcode">Buy Now<span>&rarr;</span></a>
          </div>


          
    </div>
</body>
</html>
