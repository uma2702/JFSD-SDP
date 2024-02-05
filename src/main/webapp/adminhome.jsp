<!DOCTYPE html>
<html>
<head>
    <style>
        .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border: 1px solid #ccc;
            padding: 10px;
            margin-top: 3%;
            width: 500px; /* Adjust the width as needed */
            height: 150px;
            position: relative;
            left: 30%;
            background: linear-gradient(to left, #f3f5f7, #79b979); /* Set the initial background gradient */
            transition: background 0.3s; /* Add a smooth transition for the background color */

        }

        .button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 5px 10px;
            border-radius: 50px;
            cursor: pointer;
            height: 75px;
            width: 75px;
            
        }

        .container:hover {
            background: linear-gradient(to right, #669fdb, #dce2dc); /* Change background color from left to right on hover */
            animation: hoverAnimation 0.3s infinite alternate; /* Add a simple animation on hover */
        }
        
           .info {
            font-size: large;
            font-weight: bold; /* Make the text bold on hover */
            color: #333; /* Make the text darker on hover */
            line-height: 1.5; /* Increase the line height to make the text higher */
        }

        .info span {
            position: relative;
            left: 50%;
            font-size: x-large;
        }
        

        @keyframes hoverAnimation {
            0% {
                transform: translateX(0);
            }
            100% {
                transform: translateX(10px); /* Move the container slightly to the right on hover */
            }
        }
    </style>
</head>
<body>
   <%@include file="adminnavbar.jsp" %>
    <div class="container">
        <div class="info">
            <p><strong>Artists:</strong><span>${artists}</span></p>
        </div>
        <button class="button">View</button>
    </div>

    <div class="container">
        <div class="info">
            <p><strong>Customers:</strong><span>${customers}</span></p>
        </div>
        <button class="button">View</button>
    </div>
    
    <div class="container">
        <div class="info">
            <p><strong>Arts</strong><span>${arts}</span></p>
        </div>
        <button class="button">View</button>
    </div>
    
    <!-- Add more containers as needed -->
</body>
</html>