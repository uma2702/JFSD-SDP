<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
 <%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>Artist profile</title>

    <link rel="stylesheet" type="text/css" href="css/pstyle.css" />

        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300i,400" rel="stylesheet">
    <style>
    
    body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }

        .gallery {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
            padding: 50px;
            margin-top: 50px;
            display: flex;
    justify-content: center; 
    align-items: center;
            
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

        .photo- text{
            font-size: 18px;
            margin-bottom: 10px;
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
    <nav class="navbar">
        <div class="container">
          <a href="phome">HOME</a>
          <a href="exhibit">EXHIBIT</a>
          <a href="viewart">VIEWARTS</a>
          <a href="profile">PROFILE</a>
          <a href="plogout">LOGOUT</a>
        </div>
      </nav>
       <div class="gallery">
           
   
        <div class="card">
            <img src="displayartistimg?id=<c:out value='${artist.id}' ></c:out>" class="card-image" />
            <div class="card-info">
                <div class="photo-text"><b>Name: </b>${artist.name}</div>
                <div class="photo-text"><b>Gender: </b>${artist.gender}</div>
                <div class="photo-text"><b>ArtisticMedium: </b>${artist.artisticMedium}</div>
                <div class="photo-text"><b>artworkCategories: </b>${artist.artworkCategories}</div>
               <div class="photo-text"><b>Bio: </b>${artist.bio}</div>
               
               
            </div>
        </div>
    </div>
   
</body>
</html>
