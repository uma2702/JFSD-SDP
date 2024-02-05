<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background: linear-gradient(#00000099, rgba(0, 0, 0, 0.6)), url('../images/login.jpg');
    background-size: cover;
    background-blend-mode: darken;
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
    padding: 40px; /* Increased padding */
    border-radius: 10px;
    box-shadow: 0px 0px 5px rgba(74, 11, 13, 0.2);
    width: 300px; /* Increased width */
    max-width: 80%; /* Limit to 80% of the viewport width */
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
    width: 75%;
  }

  .btn:hover {
    background-color:rgb(18, 3, 3);
  }
</style>
</head>
<body>
<div class="login-container">
    <h3 align=center style="color:darkblue">${message}</h3>
    <h2>Login</h2>
    <form id="login-form" method="post"  action="checklogin">
      <div class="input-group">
              <label for="email"><b>Email:</b></label>
              <input type="email" id="email" name="email" required>
            </div>
            
            <div class="input-group">
              <label for="password"><b>Password:</b></label>
              <input type="password" id="password" name="pwd" required>
            </div>
        <button class="btn">
            Submit
        </button>
    </a>
      <p>Don't have an account? <a href="reg">Register</a></p>
    </form>
  </div>
</body>
</html>