<!DOCTYPE html>
<html>
<head>
    <title>Update Art</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .form-container {
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }

        h2 {
            color: darkblue;
        }

        .form-group {
            margin: 10px 0;
        }

        label {
            display: block;
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"],
        textarea {
            width: 90%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-top: 5px;
        }

        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button[type="submit"] {
            background-color: darkblue;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
        }
    </style>
</head>
<body>

      <%@ include file="pnavbar.jsp" %>
    <div class="form-container">
        <h3 align="center" style="color: green">${message}</h3>
        <h2>Update Art</h2>
        <form action="update" method="post">
            <div class="form-group">
                <label for="name">Art Name:</label>
                <input type="text" id="name" name="name" maxlength="50" required value="${a.name}">
            </div>

            <div class="form-group">
                <label for="type">Art Type:</label>
                <select id="type" name="type" required>
                    <option value="${a.type}" selected="selected">${a.type}</option>
                    <option value="OilPaintings">Oil Paintings</option>
                    <option value="RainyScapes">Rainy Scapes</option>
                    <!-- Add more options here -->
                </select>
            </div>

            <div class="form-group">
                <label for="price">Art Price:</label>
                <input type="text" id="price" name="price" required value="${a.price}">
            </div>

            <div class="form-group">
                <input type="hidden" id="email" name="email" required value="${a.email}">
            </div>

            <div class="form-group">
                <label for="desc">Art Description:</label>
                <textarea id="desc" name="desc" required>${a.desc}</textarea>
            </div>

            <div class="form-group">
                <button type="submit">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>
