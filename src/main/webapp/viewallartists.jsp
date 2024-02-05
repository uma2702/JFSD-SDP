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
        
        a{
          color: blue;
        
        
        }
        h3 {
            text-align: center;
            color: #fff; /* White text color for headings */
        }
        .container {
            width: 80%;
            margin: 0 auto;
            border-radius: 10px; /* Rounded corners for the container */
background: #ADA996;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #EAEAEA, #DBDBDB, #F2F2F2, #ADA996);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #EAEAEA, #DBDBDB, #F2F2F2, #ADA996); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            border: 1px solid #eee;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Box shadow for a subtle lift effect */
            margin-bottom: 20px;
            padding: 20px;
        }
        .container th {
            background: linear-gradient(to bottom, #333, #555); /* Gradient background for table header */
            color: white;
        }
        .container tr:nth-child(even) {
            background-color: #f9f9f9; /* Subtle background color for even rows */
        }
        .container tr:nth-child(odd) {
            background-color: #ffffff; /* White background color for odd rows */
        }
        .container td {
            padding: 10px;
        }
    </style>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>
<br>
<h3 align="center"><u>View All Artists</u></h3>
<c:forEach items="${empdata}" var="artist">
    <div class="container">
        <table align="center" border="0">
            <tr bgcolor="#f2f2f2" style="color:black">
                <th>ID</th>
                <th>NAME</th>
                <th>GENDER</th>
                <th>BIO</th>
                <th>ARTISTIC MEDIUM</th>
                <th>LOCATION</th>
                <th>ARTWORK CATEGORIES</th>
                <th>EMAIL</th>
                <th>PASSWORD</th>
                <th>PHONE NUMBER</th>
                <th>STATUS</th>
                <th>CURRENT STATUS</th>
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
                <td><c:out value="${artist.artiststatus}" /></td>
               <td> <a href='<c:url value="setstatus?id=${artist.id}&status=true"></c:url>' style="color: blue;">Active</a>
	            <a href='<c:url value="setstatus?id=${artist.id}&status=false"></c:url>' style="color: blue;">Inactive</a>
             </td>   
            </tr>
        </table>
    </div>
</c:forEach>
</body>
</html>
