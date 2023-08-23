<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Yash-Jewellery - Account</title>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css">
    
</head>

<body>
    <section id="header">
        <a href="index.jsp"><img src="img/logon.png" class="logo" alt="Yash-Jewellery" width="80" height="80"></a>

        <div>
            <ul id="navbar">
                <li><a  href="index.jsp">Home</a></li>
                <li><a href="shop.jsp">Shop</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="contact.jsp">Contact</a></li>
                <li><a href="register.jsp">Register</a></li>
                <li><a class="active" href="login.jsp">Login</a></li>
                <li><a href="cart.html"><i class="far fa-shopping-bag"></i></a></li>
            </ul>
        </div>
    </section>

    <div class="account-page">
        <div class="form-container">
            <form id="LoginForm" action="login" method="POST">
                <h2>Login</h2>
                <input type="text" placeholder="Username" required="required" name="username">
                <input type="password" placeholder="Password" required="required" name="password">
                <button type="submit" class="btn">Login</button>
                <p class="switch-form" onclick="redirectToRegister()">Don't have an account? Register here</p>
            </form>

        </div>
    </div>
    
    <script>
        function redirectToRegister() {
            window.location.href = "register.jsp";
        }
    </script>

    <script src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
    <script>
        var loginForm = document.getElementById("LoginForm");

        loginForm.addEventListener("submit", function(event) {
            event.preventDefault(); 

            var username = document.getElementsByName("username")[0].value;
            var password = document.getElementsByName("password")[0].value;

            if (username === "admin" && password === "admin") {
                Toastify({
                    text: "Successfully logged in",
                    duration: 3000, 
                    gravity: "top", 
                    position: "center", 
                    backgroundColor: "green", 
                }).showToast();
              
                setTimeout(function() {
                    window.location.href = "admin.jsp";
                }, 3000);
            } else if (username === "admin" && password !== "admin") {
                Toastify({
                    text: "Wrong password",
                    duration: 3000, 
                    gravity: "top", 
                    position: "center", 
                    backgroundColor: "red", 
                }).showToast();
            } else {
                Toastify({
                    text: "Successfully logged in",
                    duration: 3000, 
                    gravity: "top", 
                    position: "center", 
                    backgroundColor: "green", 
                }).showToast();
                
                setTimeout(function() {
                    window.location.href = "index.jsp";
                }, 3000);
            }
            
            
        });
    </script>
</body>
</html>
