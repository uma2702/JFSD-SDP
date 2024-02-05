<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    
    <style>
        body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
overflow: hidden;
}

.registration-form {
    position: absolute;
    top: 20%;
    left:  35%;
    max-width: 400px;
    margin: 0 auto;
    background-color: rgba(250, 250, 250, 0.1);
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
       
       
.column {
    
    width: 80%;
    padding: 10px;
}

label {
    font-weight: bold;
}

input[type="text"],
input[type="email"],
input[type="password"],
input[type="date"],
select,
textarea,
input[type="number"] {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
}

button {
    width: 30%;
    background-color: #4CAF50;
    color: white;
    padding: 10px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    margin-left: 30%;
}

button:hover {
    background-color: #45a049;
}



/* Responsive design */
@media screen and (max-width: 600px) {
    .column {
        width: 100%;
    }
}
    </style>
</head>
<body>
    
    <div class="registration-form">
        <form action="checkadminlogin" method="post">
            <div class="column"> 
                <center><h2>Admin Login</h2></center>
                <input type="text" placeholder="Name" id="name" name="uname" required>
                <input type="password" id="location" placeholder="Password" name="pwd" required>    
            </div>
            
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>