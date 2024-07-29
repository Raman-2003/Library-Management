<html>
<head>
    <title>ADD READER</title>
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
        #pp{
        margin-left: -53px;
        }
        h1 {
            font-size: 36px;
            margin-bottom: 1vh;
        }

        .btn-container {
            display: flex;
            justify-content: center;
            margin-top: 2vh;
        }

        .btn-container form {
            margin: 0 5px;
        }
    </style>
</head>
<body>
    <div id="divi">
        <h1>ADD READER</h1><br><br>
        <form action="adduser" method="post">
            <label>Name</label>
            <input type="text" class="a" name="name"><br><br>

            <label>Book name</label>
            <input type="text" class="a" name="book"><br><br>

            <label>Contact</label>
            <input type="text" class="a" name="conn"><br><br>

            <label>Book id</label>
            <input type="text" class="a" name="id"><br><br>

            <label>Aadhar no.</label>
            <input type="text" class="a" name="adr"><br><br>

            <label id="pp">Gender</label>
            <input type="radio" name="gen" value="male" class="a"> MALE
            <input type="radio" name="gen" value="female" class="a"> FEMALE<br><br>

            <input type="submit" class="btn" value="ADD">
        </form>
        
        <div class="btn-container">
            <form action="backtoadmin" method="post">
                <input type="submit" class="btn" value="BACK">
            </form>
            
            <form action="cle" method="post" >
                <input type="submit" class="btn" value="CLEAR">
            </form>
        </div>
    </div>
</body>
</html>
