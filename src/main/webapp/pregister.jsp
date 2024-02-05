<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>


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
        <h3 align="center" style="color: darkblue">${message}</h3>

        <h2>Artist Register</h2>
        <form id="signup-form" method="post" action="insertp" enctype="multipart/form-data" >
            <div class="input-group">
                <label for="name"><b>Name</b></label>
                <input type="text" id="name" name="name" required>
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

            <div class="input-group">
                <label for="bio"><b>Artist Bio (Max 500 characters):</b></label>
                <textarea id="bio" name="bio" rows="4" cols="50" maxlength="500" required></textarea>
            </div>

            <div class="input-group">
                <label for="artistic-medium"><b>Artistic Medium</b></label>
                <select id="artistic-medium" name="artisticMedium" required>
                    <option value="">---Select---</option>
                    <option value="Oil Painting">Oil Painting</option>
                    <option value="Watercolor">Watercolor</option>
                    <option value="Digital Art">Digital Art</option>
                    <!-- Add more options as needed -->
                </select>
            </div>

            <div class="input-group">
                <label for="location"><b>Location:</b></label>
                <input type="text" id="location" name="location" required>
            </div>

            <div class="input-group">
                <label for="artwork-categories"><b>Artwork Categories (Comma-separated):</b></label>
                <input type="text" id="artwork-categories" name="artworkCategories" required>
            </div>

            <div class="input-group">
                <label for="phone"><b>Phone Number:</b></label>
                <input type="tel" id="phone" name="phoneNumber" required>
            </div>
            <div class="input-group">
                <label for="image">Art Image:</label>
                <input type="file" id="image" name="artistimage" accept="artistimage/*" required>
            </div>
            
            

            <button type="submit" class="btn">Register</button>
        </form>
        <p>Have an account? <a href="plogin">Login</a></p>
    </div>
</div>
</body>
</html>
