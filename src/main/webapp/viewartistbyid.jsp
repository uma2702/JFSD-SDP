<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c1" %>
 
<html> 
<head> 
 
<link type="text/css" rel="stylesheet" href="css/style.css"> 
 
<style> 
 
 
</style> 
</head> 
<body> 


<%@ include file="adminnavbar.jsp" %>

ID : ${artist.id}<br>
Name : ${artist.name}<br>
Gender : ${artist.gender}<br>
Bio : ${artist.bio}<br>
ArtisticMedium : ${artist.artisticMedium}<br>
Location : ${artist.location}<br>
ArtWorkCategories : ${artist.artworkCategories}<br>
Email : ${artist.email}<br>
Password : ${artist.password}<br>
Phone Number : ${artist.phoneNumber}<br>
Status : ${artist.active}

</body>
</html>