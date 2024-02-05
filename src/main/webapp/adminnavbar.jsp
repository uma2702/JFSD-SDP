<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Navbar</title>
    <style>
        /* Navbar styles */
        nav {
            background-color: #1e2330;
            padding: 10px 0;
            text-align: center; /* Center-align the links */
        }

        ul {
            list-style: none;
            padding: 0;
        }

        li {
            display: inline;
        }

        a {
            text-decoration: none;
            color: #fff; /* Text color */
            font-weight: bold;
            padding: 10px 20px; /* Increase padding to make the links larger */
            transition: border-bottom 0.3s; /* Underline transition effect */
        }

        a:hover {
            border-bottom: 2px solid #fff; /* Underline on hover */
        }
    </style>
</head>
<body>
    <nav>
        <ul>
            <li><a href="adminhome">Home</a></li>
            <li><a href="viewallartists">View All Artists</a></li>
            <li><a href="viewartsinadmin">View Arts</a></li>
            <li><a href="deleteartist">Delete</a></li>
            <li><a href="logout">Logout</a></li>
            
            <!-- Add more navbar items as needed -->
        </ul>
    </nav>
</body>
</html>
