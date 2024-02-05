<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        /* Add your custom CSS styles here */
        body {
            font-family: Arial, sans-serif;
            background: white
            color: #333;
        }
        h3 {
            text-align: center;
            color: #fff; /* White text color for headings */
        }
        .container {
            width: 80%;
            margin: 0 auto;
            border-radius: 10px; /* Rounded corners for the container */
            background: linear-gradient(to bottom, #FFD166, #FF6B6B); /* Gradient background for the container */
            border: 1px solid #000;
            margin-bottom: 20px;
            padding: 9px;
            text-align: center; /* Center-align the container content */
        }
        .container th {
            background: linear-gradient(to bottom, #333, #555); /* Gradient background for table header */
            color: white;
        }
        .container tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .container tr:nth-child(odd) {
            background-color: #fff;
        }
        .container td {
            padding: 7px;
        }
        
       .round-button {
            display: inline-block;
            padding: 5px 10px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 50%; /* Round shape */
            transition: background-color 0.3s;
            animation: blink 1s infinite alternate; /* Blink animation */
        }
        @keyframes blink {
            0% {
                background-color: #007bff;
            }
            100% {
                background-color: #0056b3;
            }
        }
          
    </style>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>
<br>
<h3 align="center"><u>View All Artists</u></h3>
<c:forEach items="${empdata}" var="artist">
    <div class="container">
        <table align="center" border="2" style="margin: 0 auto;"> <!-- Center-align the table -->
            <tr bgcolor="black" style="color:black">
                <td>ID</td>
                <td>NAME</td>
                <td>GENDER</td>
                <td>BIO</td>
                <td>ARTISTICMEDIUM</td>
                <td>LOCATION</td>
                <td>ARTWORKCATEGORIES</td>
                <td>EMAIL</td>
                <td>PASSWORD</td>
                <td>PHONENUMBER</td>
                <td>ARTS</td>
            </tr>
            <tr>
                <td><c:out value="${artist.id}" /></td>
                <td><c:out value="${artist.name}" /></td>
                <td><c:out value="${artist.gender}" /></td>
                <td><c:out value="${artist.bio}" /></td>
                <td><c:out value="${artist.artisticMedium}" /></td>
                <td><c:out value="${artist.location}" /></td>
                <td><c:out value="${artist.artworkCategories}" /></td>
                <td><c:out value="${artist.email}" /></td>
                <td><c:out value="${artist.password}" /></td>
                <td><c:out value="${artist.phoneNumber}" /></td>
                <td>
                    <form action='<c:url value="viewsingleartbyadmin" ></c:url>' method="post">
                        <input type="hidden" name="email" value="${artist.email}">
                        <button type="submit" class="round-button">View</button>
                    </form>
                </td>
            </tr>
        </table>
    </div>
</c:forEach>
</body>
</html>
