<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User Search</title>
    <style>
        body {
            background-color: #704732;
            background-size: cover;
            background-position: center;
            height: 100%;
            margin: 5vh;
            display: flex;
            justify-content: left;
            align-items: center;
            font-family: Arial, sans-serif;
            overflow: hidden; /* Prevents scrollbar */
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

        #divi {
            text-align: center;
            padding: 3vw;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 2vw;
            max-width: 90%;
            
            z-index: 1;
        }

        .btn {
            background-color: #C07A56;
            width: 150px;
            border: none;
            border-radius: 15px;
            font-size: 16px;
            padding: 5px;
            color: white;
            margin: 0 5px;
        }

        .a {
            margin-top: 1vh;
            padding: 0.8vw 1.2vw;
            border-radius: 0.8vw;
            margin-bottom: 1vh;
            font-size: 16px;
        }

        label {
            display: inline-block;
            width: 100px;
            text-align: left;
            font-size: 16px;
        }

        @media (max-width: 768px) {
            #divi {
                padding: 5px;
                border-radius: 10px;
            }

            .a {
                margin-top: 5px;
                padding: 5px 10px;
                border-radius: 5px;
                width: 90%;
                font-size: 14px;
            }

            label {
                width: 100%;
                margin-bottom: 5px;
            }
        }

        input[type="submit"]:hover {
            background-color: #704732;
        }

        h1 {
            font-size: 36px;
            margin-bottom: 1vh;
        }

       #result {
            
            position: absolute; 
            top: 5vh;
            right: 20vh; 
            justify-content: center;
            align-items: center;
            z-index: 5; 
        }
    </style>
    <script>
        function searchUser() {
            var name = document.getElementById("name").value;
            var phone = document.getElementById("phone").value;

            var xhr = new XMLHttpRequest();
            xhr.open("GET", "usrtabl?name=" + name + "&phone=" + phone, true);
            
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    document.getElementById("result").innerHTML = xhr.responseText;
                }
            };

            xhr.send();
        }
    </script>
</head>
<body>
    <div id="divi">
    <h1>User Search</h1>
    <form onsubmit="searchUser(); return false;">
        <label for="name">Name:</label>
        <input type="text" id="name" class="a" placeholder="Enter name"><br><br>
        
        <label for="phone">Phone:</label>
        <input type="text" id="phone" class="a" placeholder="Enter phone number"><br><br>
        
        <input type="submit" class="btn" value="Search"> 
    </form>
    <br>
    <form action="logout" method="post">
    <input type="submit" class="btn" value="Back"> 
    </form>
</div>
    <div id="result"></div>
</body>
</html>
