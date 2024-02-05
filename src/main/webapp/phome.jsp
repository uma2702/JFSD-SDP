<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 

<!DOCTYPE html>
<html>
<head>
<title>Artist Home</title>
    <link rel="stylesheet" type="text/css" href="css/pstyle.css" />

       <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300i,400" rel="stylesheet">
     <style>
     .container1 {
          display: flex;
           align-items: center;
           justify-content: flex-start;
           margin-top: 80px;
}

img {
max-width: 100%;
max-height: 100%;
margin-left: 100px;

float: left;

}

.bg-img {
    /* The image used */
    background-image: url("../images/p.jpg");
    min-height: fit-content;
    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    
  }
.text {
font-size: 30px;
float: right;
margin-left: 50px;
font-family: 'Didot', serif;
font-style: italic;
font-weight: bold; 
}

    

    </style>
</head>
<body>
 <br>
   <%@ include file="pnavbar.jsp" %>
   
<div class="bg-img">
        <div class="container1">
          <div class="image">
            <img src="../images/phome.jpg">
          </div>
          <div class="text">
                 <p> Join our community of artists and showcase your art </p>
                 <p> on our platform!</p>
                 <p>Exhibit your work and connect with art enthusiasts</p>
                    <p> from around the world.</p> 
                 
                 <br></br>
        
               <br></br>
          </div>
        </div>
</div>  
</body>
</html>