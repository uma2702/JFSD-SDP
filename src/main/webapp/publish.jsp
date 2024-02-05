<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<title>Exhibit</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300i,400" rel="stylesheet">
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        background: linear-gradient(#00000099, rgba(0, 0, 0, 0.6)), url('../images/publsh.jpg');
        background-size: cover;
        background-blend-mode: ;
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
</style>
</head>
<body>
<%@ include file="pnavbar.jsp" %>

<div class="login-container">

      <h3 align="center" style="color: darkblue">${message}</h3>
    

    <form id="artwork-form" method="post" action="insertart">
        <div class="input-group">
            <label for="name">Art Name:</label>
            <input type="text" id="art-name" name="name" required>
        </div>
        <div class="input-group">
            <label for="type">Type of Art:</label>
            <input type="text" id="art-type" name="type" required>
        </div>
        <div class="input-group">
            <label for="price">Price:</label>
            <input type="text" id="art-price" name="price" required>
        </div>
        <div class="input-group">
            <label for="url">Art Image URL:</label>
            <input type="url" id="art-url" name="url" required>
        </div>
         <div class="input-group">
            <label for="desc">Description</label>
            <input type="text" id="art-pr" name="desc" required>
        </div>
        <button type="submit" class="btn">Submit Artwork</button>
    </form>
</div>
</body>
</html>
