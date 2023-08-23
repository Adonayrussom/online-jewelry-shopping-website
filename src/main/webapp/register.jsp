<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
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
                <li><a  class="active" href="register.jsp">Register</a></li>
                <li><a  href="login.jsp">Login</a></li>
                <li><a href="cart.html"><i class="far fa-shopping-bag"></i></a></li>
            </ul>
        </div>
    </section>

    <div class="account-page">
        <div class="form-container">
            <form id="RegForm" action="account" method="post">
                <h2>Register</h2>
                <input type="text" placeholder="Username" required="required" name="fname">
                <input type="email" placeholder="Email" required="required" name="email">
                <input type="password" placeholder="Password" required="required" name="password">
                <button type="submit" class="btn">Register</button>
                <p class="switch-form" onclick="redirectToLogin()">Don't have an account? Login here</p>
            </form>
        </div>
    </div>
    
    <script>
        function redirectToLogin() {
            window.location.href = "login.jsp";
        }
    </script>

    <script src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
    <script>
        var regForm = document.getElementById("RegForm");

        regForm.addEventListener("submit", function(event) {
            event.preventDefault(); // Prevent form submission

            // Show toast notification
            Toastify({
                text: "Successfully registered",
                duration: 3000, 
                gravity: "top", 
                position: "center", 
                backgroundColor: "green",
            }).showToast();
            
            setTimeout(function() {
                window.location.href = "index.jsp";
            }, 3000);
        });
    </script>
</body>
</html>
