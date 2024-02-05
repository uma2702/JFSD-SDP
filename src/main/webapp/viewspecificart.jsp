<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Photo Gallery</title>
    <style>
        body {
        font-family: Arial, sans-serif;
        background-image: url('images/dreamy.jpg');
        background-size: cover;
        background-repeat: no-repeat;
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
    </style>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>
<br>

    <div class="gallery">
    <c:forEach items="${art}" var="art" varStatus="loop">
        <div class="card">
            <img src="displayartimage?id=<c:out value='${art.id}' ></c:out>" class="card-image" />
            <div class="card-info">
                <div class="photo-name">${art.name}</div>
                <div class="photo-price">${art.price}</div>
                <a class="view-button" href="#">View</a>
            </div>
        </div>
        </c:forEach>
    </div>
   
</body>
</html>