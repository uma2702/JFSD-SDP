<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/signup.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>cregister</title>
</head>
<body>
 <div class="signup-container">
        <div class="image-container"></div>
        <div class="form-container">
             <h3 align=center style="color:darkblue">${message}</h3>
         
          <h2>Register</h2>
          <form id="signup-form" method="post" action="insertc">
            <div class="input-group">
              <label for="username"><b>Name</b></label>
              <input type="text" id="username" name="name" required>
            </div>
            <div class="input-group">
  <label for="gender"><b>Gender</b></label>
  <select id="gender" name="gender" required>
    <option value="">---Select---</option>
    <option value="MALE">Male</option>
    <option value="FEMALE">Female</option>
    <option value="OTHERS">Others</option>
  </select>
</div>

            <div class="input-group">
              <label for="email"><b>Email:</b></label>
              <input type="email" id="email" name="email" required>
            </div>
            
            <div class="input-group">
              <label for="password"><b>Password:</b></label>
              <input type="password" id="password" name="pwd" required>
            </div>
            
            <button type="submit" class="btn">Register</button>
          </form>
          <p>Have an account? <a href="/">Login</a></p>
        </div>
      </div>

</body>
</html>