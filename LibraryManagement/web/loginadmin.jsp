<html>
<head>
    <title>Document</title>
</head>
 <style>
        body {
            background-image: url('images/intro.jpg');
            background-size: cover;
            background-position: center;
            height: 100%;
            margin: 0;
            display: flex;
            justify-content: center;
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
            position: relative;
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

      
    </style>
<body>
    <div class="form-container">
        <form action="auth" method="post">
           
            <div id="divi">
                <h1>VERIFY</h1><br><br>
                <label for="id">ID: </label>
                <input type="text" class="a" name="id" id="id">
            <br>
          
                <label for="pass">Password: </label>
                <input type="password" name="password" class="a" id="pass">
            
            <br><br><br>
                <input type="submit" value="Login" class="btn"> 
            
        </form>
        <form action="logout" method="post">
            <br><br>
        <input type="submit" value="Back" class="btn">
        </form>
       </div>
    </div>

    
</body>
</html>

