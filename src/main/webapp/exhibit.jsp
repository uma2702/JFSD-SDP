<!--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>-->
<!DOCTYPE html>
<html>
<head>
    <style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        background:url('images/addart.jpg');
        background-size: cover;
        animation: backgroundAnimation 10s ease infinite;
    }

    @keyframes backgroundAnimation {
        0% {
            background-position: 0% 0%;
        }
        50% {
            background-position: 50% 50%;
        }
        100% {
            background-position: 100% 100%;
        }
    }

    .login-container {
        background-color: rgba(255, 255, 255, 0.3);
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0px 0px 5px rgba(74, 11, 13, 0.2);
        width: 300px;
        max-width: 80%;
    }

    .login-container h2 {
        text-align: center;
        margin-bottom: 20px;
    }

    .input-group {
        margin-bottom: 15px;
    }

    .input-group label {
        display: block;
        margin-bottom: 5px;
    }

    .input-group input {
        width: 90%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    .input-group input:focus {
        outline-color: rgb(25, 3, 3);
    }

    .btn {
        background-color: rgb(18, 1, 1);
        color: white;
        padding: 10px 15px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        width: 50%;
    }

    .btn:hover {
        background-color: rgb(18, 3, 3);
    }
    
    
    
    
    

        .navbar {
            background-color: #007bff;
            color: #fff;
            padding: 10px;
        }

        .form-container {
    background-color: rgba(128, 128, 128, 0.7); /* Adjust the alpha value to control transparency */
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    margin: 100px auto;
    padding: 20px;
    width: 300px;
    background: linear-gradient(black,blue,light blue);
    background-size: cover;
    background-blend-mode: darken;
    animation: backgroundAnimation 10s ease infinite;
  }

  .form-container h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #fff; /* Change text color for better readability on the transparent background */
  }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group input[type="text"],
        .form-group select {
            width: 90%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        
        .form-group textarea {
            width: 90%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        .form-group button {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
    </style>
</head>
<body>
    
        <%@ include file="pnavbar.jsp" %>
    
    <div class="form-container">
        <h3 align=center style="color:darkblue">${message}</h3>
        <h2>Add Art</h2>
        <form action="addart" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="name">Art Name:</label>
                <input type="text" id="name" name="name" maxlength="50" required>
            </div>
            
            
            <div class="form-group">
            <label for="type">Art Type:</label>
            <select id="type" name="type" required>
              <option value="Not Selected">--Select--</option>
                <option value="OilPaintings">OilPaintings</option>
                <option value="RainyScapes">RainyScapes</option>
                <option value="Handpainted Art Painting">Handpainted Paintings</option>
                 <option value="Customized Painting">Customized Paintings</option>
                 <option value="RELIGIOUS PAINTINGS">RELIGIOUS PAINTINGS</option>
                 <option value="Nature PAINTINGS">Nature PAINTINGS</option>
                 <option value="Sunrise, Sunset PAINTINGS">Sunrise, Sunset PAINTINGS</option>
                 <option value="Indian Heritage PAINTINGS">Indian Heritage PAINTINGS</option>
                 <option value="Animal,Birds PAINTINGS">Animals,Birds PAINTINGS</option>
              
                <!-- You can add more options as needed -->
            </select>
          </div>
            
            
            <div class="form-group">
                <label for="price">Art Price:</label>
                <input type="text" id="price" name="price" required>
            </div>
            <div class="form-group">
                <label for="image">Art Image:</label>
                <input type="file" id="image" name="image" accept="image/*" required>
            </div>
            <div class="form-group">
                <label for="desc">Art Description:</label>
                <textarea id="desc" name="desc" required></textarea>
            </div>
            <div class="form-group">
                <button type="submit">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>