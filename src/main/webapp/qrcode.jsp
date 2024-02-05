<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300i,400" rel="stylesheet">
    <style>
        .qr-code-container {
            text-align: center;
        }

        .qr-code {
            max-width: 80%;
            height: 550px /* Set the maximum width of the QR code */
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
    </nav>
    <br>
    <div class="qr-code-container">
        <img alt="qrcode" class="qr-code" src="/images/qrcode.jpg">
        <br>
        <b>Scan The QRCode</b>
    </div>
</body>
</html>
