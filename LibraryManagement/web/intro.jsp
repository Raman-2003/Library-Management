
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Admin</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <style>
        body {
            background-image: url('images/intro.jpg');
            background-size: cover;
            background-position: center;
            height: 100vh; 
            margin: 0;
            display: flex;
            font-family: Arial, sans-serif;
            justify-content: center;
            align-items: center;
        }

        body::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: inherit;
            filter: blur(5px); 
            z-index: -1;
        }

        div {
            text-align: center;
            padding: 5vw; /* Responsive padding based on viewport width */
            background: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            border-radius: 2vw; /* Responsive border radius */
            max-width: 80%; /* Maximum width */
            position: relative; /* Added position relative */
            z-index: 1; 
        }
        .btn{
            background-color: #C07A56;
            width: 200px;
            border: none;
            border-radius: 20px;
            font-size: 20px;
            padding: 5px;
            color: white;
        }

        .a {
            margin-top: 2vh; /* Responsive margin top */
            padding: 1vw 2vw; /* Responsive padding */
            border-radius: 1vw; 
        }

        @media (max-width: 768px) {
            div {
                padding: 10px;
                border-radius: 15px;
            }

            .a {
                margin-top: 10px;
                padding: 10px 20px;
                border-radius: 8px;
            }
        }
        input[type="submit"]:hover {
            background-color: #704732;
          
        }
        h1{
        font-family: Arial, sans-serif;
         font-size: 50px;
         
        }
    </style>
</head>
<body>
    <div>
        <h1>INK AND PAGE </h1><br><br>
        <form action="user" method="post">
            <input type="submit" class="btn" action="user" value="View Books" class="a">
        </form>
        <form action="admin" method="post">
            <input type="submit" class="btn" action="submit" value="Admin login" class="a">
        </form>
        
    </div>
</body>
</html>
