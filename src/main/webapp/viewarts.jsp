<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Photo Gallery</title>
    <style>
        body {
          
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .gallery {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
            padding: 20px;
            margin-top: 60px;
            justify-content: center;
        }

        .card {
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            overflow: hidden;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            transition: transform 0.2s;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card-image {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .card-content {
            padding: 15px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        
        /* Add this CSS rule for the "Update" button */
.art-button {
    display: inline-block;
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    text-decoration: none;
    border-radius: 5px;
    margin-top: 10px;
    text-align: center;
    transition: background-color 0.3s;
}



/* Add a hover effect for the button */
.art-button:hover {
    background-color: #0056b3;
}
        

        .photo-name {
    font-weight: bold;
    font-size: 18px;
    margin-bottom: 10px;
    text-align: center;
    color: gold;
}
        

        .photo-price {
            font-weight: bold;
        
            font-size: 16px;
            text-align: center;
        }

        .photo-type {
            font-size: 14px;
            text-align: center;
        }

        .photo-desc {
            font-size: 14px;
            text-align: center;
        }
        .myInput
        {
          background-position: 10px 10px;
          background-repeat: no-repeat;
          width: 100%;
          font-size: 16px;
          padding: 12px 20px 12px 40px;
          border: 1px solid #ddd;
          margin-bottom: 12px;
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
<div class=""container">
    <%@ include file="pnavbar.jsp" %>
    <br>
    <br>
    <br>
    <br><br>
    <h3 align="center"><u><b>View All Arts</b></u></h3>
  <div class=""container">
  
    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search by Art Name or Art Type"
    style="width: 100%; max-width: 1600px; margin: 0 auto; padding: 20px;font-size: 16px;">
<span id="searchIcon">🔍</span>
    
</div>
    <div class="gallery">
        <c:forEach items="${artdata}" var="art">
            <div class="card">
                <img class="card-image" src="displayartimage?id=<c:out value='${art.id}' />" alt="Art Image">
                <div class="card-content">
                    <div class="photo-name">
                        <c:out value="${art.name}"></c:out>
                    </div>
                    <div class="photo-type">
                        <c:out value="${art.type}"></c:out>
                    </div>
                    <div class="photo-desc">
                        <c:out value="${art.desc}"></c:out>
                    </div>
                    <div class="photo-price">
                        <c:out value="${art.price}"></c:out>
                    </div>
                    <a href="updateart?id=<c:out value='${art.id}' />" class="art-button">Update</a>
                </div>
            </div>
        </c:forEach>
    </div>
    </div>
</body>

</html>