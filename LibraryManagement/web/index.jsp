<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Loading Screen</title>
    <style>
       
        #splash {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to bottom, #000000, #0a0a0a);
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 9999; 
        }
        
        #splash img {
            max-width: 100%;
            height: 70%;
            position: relative; /* Added */
        }

      
       
      
    </style>
</head>
<body>
  
    <div id="splash">
        <img src="images/library.jpeg" alt="Loading Screen Image">
    </div>

    <script>
        setTimeout(function() {
            document.getElementById('splash').style.display = 'none';
            window.location.href = 'intro.jsp';
        }, 3000); 
    </script>
</body>
</html>
