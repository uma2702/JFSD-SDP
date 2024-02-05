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
            margin: 0;
            overflow: hidden;
        }
        h3 {
            text-align: center;
            color: #fff; /* White text color for headings */
            margin-top: 40px; /* Adjust margin for better centering */
        }
        .container {
            width: 80%;
            margin: 0 auto;
            border-radius: 10px; /* Rounded corners for the container */
            background: #0575E6;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #021B79, #0575E6);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #021B79, #0575E6); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

            border: 1px solid #000;
            padding: 10px;
            transform: translate(0, 0); /* Parallax effect */
            transition: transform 0.5s;
        }
        .container:hover {
            transform: translate(0, 10px); /* Adjust the value for desired parallax effect */
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
        .delete-button {
            display: inline-block;
            padding: 5px 10px;
            background-color: #FF6B6B; /* Red color for delete button */
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>
<br>
<h3 align="center"><u>Delete Artists</u></h3>
<div class="container">
    <table align="center" border="2">
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
            <td>DELETE</td>
        </tr>
        <c:forEach items="${empdata}" var="artist">
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
                    <a class="delete-button" href='<c:url value="delete/${artist.id}"></c:url>'>Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
