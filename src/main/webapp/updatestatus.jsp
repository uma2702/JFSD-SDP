<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
 
<html> 
<head> 
 
<link type="text/css" rel="stylesheet" href="css/style.css"> 
 
<style> 
 
 
</style> 
</head> 
<body> 
 
 <%@ include file="adminnavbar.jsp" %>
 
<br> 

<span class="blink">
<h3 align=center style="color:red">${message}</h3>
</span>

 
<h3 align="center"><u>Update Status</u></h3> 
 
<table align=center  border=2>  
<tr bgcolor="black" style="color:white"> 
<td>ID</td> 
<td>NAME</td> 
<td>ArtisticMedium</td> 
<td>ArtWorkCategories</td> 
<td>EMAIL</td> 
<td>Phone NO</td> 
<td>STATUS</td>
<td>ACTION</td>
</tr> 
 
<c:forEach items="${artistdata}"  var="artist"> 
<tr> 
<td><c:out value="${artist.id}" /></td> 
<td><c:out value="${artist.name}" /></td> 
<td><c:out value="${artist.artisticMedium}" /></td> 
<td><c:out value="${artist.artworkCategories}" /></td> 
<td><c:out value="${artist.email}" /></td> 
<td><c:out value="${artist.phoneNumber}" /></td> 

<c:if test="${artist.active==true}" >
<td bgcolor="green">ACTIVE</td>
</c:if>
<c:if test="${artist.active==false}" >
<td bgcolor="red">INACTIVE</td>
</c:if>

<td>
<a href='<c:url value="set?id=${artist.id}&status=true"></c:url>'>Active</a>
<a href='<c:url value="set?id=${artist.id}&status=false"></c:url>'>Inactive</a>
</td>
 
</tr> 
</c:forEach> 
 
</table> 
 
</body> 
</html>