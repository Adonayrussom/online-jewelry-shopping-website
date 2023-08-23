<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Page</title>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
    <link rel="stylesheet" href="css/style.css">
    <style>
        /* Admin Page Styles */
        #admin-page {
            padding: 50px;
        }
        
        #admin-page h2 {
            margin-bottom: 30px;
        }
        
        #admin-page .admin-feature {
            margin-bottom: 20px;
        }
        
        #admin-page .admin-feature a {
            display: block;
            background-color: #088178;
            color: #fff;
            padding: 10px;
            text-align: center;
            text-decoration: none;
            font-weight: bold;
            text-transform: uppercase;
            transition: background-color 0.3s ease;
        }
        
        #admin-page .admin-feature a:hover {
            background-color: #06615c;
        }
    </style>
</head>
<body>
    
    <section id="header">
        <a href="index.jsp"><img src="img/logonnn.jpg" class="logo" alt="Yash-Jewellery" width="80" height="80"></a>

        <div>             
            <ul id="navbar">
                <li>
                    <form>
                        <label for="search">Search</label>
                        <input id="search" type="search" pattern=".*\S.*" required>
                        <span class="caret"></span>
                    </form>
                </li>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="shop.jsp">Shop</a></li>                  
                <li><a href="about.jsp">About</a></li>
                <li><a href="contact.jsp">Contact</a></li>
                <li><a href="register.jsp">Register</a></li>
                <li><a href="login.jsp">Login</a></li>
                <li id="lg-bag"><a href="cart.html"><i class="far fa-shopping-bag"></i></a></li>
                <a href="#" id="close"><i class="far fa-times"></i></a>
            </ul>              
        </div>
    </section>
    
    <section id="admin-page">
        <h2>Admin Page</h2>
        
        <div class="admin-feature">
            <a href="#">Manage Users</a>
        </div>
        
        <div class="admin-feature">
            <a href="#">Manage Products</a>
        </div>
        
        <div class="admin-feature">
            <a href="#">Manage Orders</a>
        </div>
        
        <div class="admin-feature">
            <a href="#">Analytics</a>
        </div>
    </section>
    
    <footer class="section-p1">
        <div class="col">
            <img class="logo" src="img/logof.png" alt="">
            <h4>Contact</h4>
            <p><strong>Address:</strong> 1234 Nairobi Road, Street, Nairobi</p>
            <p><strong>Phone:</strong> +01 2345 6542 / (+91) 01 4532 4654</p>
            <p><strong>Availability:</strong> 10:00 - 18:00, Mon - Sat</p>
            <div class="follow">
                <h4>Follow us</h4>
                <div class="icon">
                    <i class="fab fa-facebook-f"></i>
                    <i class="fab fa-twitter"></i>
                    <i class="fab fa-instagram"></i>
                    <i class="fab fa-youtube"></i>
                </div>
            </div>
        </div>

        <div class="col">
            <h4>About</h4>
            <a href="#">About us</a>
            <a href="#">Delivery Information</a>
            <a href="#">Privacy Policy</a>
            <a href="#">Terms & Conditions</a>
            <a href="#">Contact Us</a>
        </div>

        <div class="col">
            <h4>My Account</h4>
            <a href="#">Sign In</a>
            <a href="#">View Cart</a>
            <a href="#">My Wishlist</a>
            <a href="#">Track My Order</a>
            <a href="#">Help</a>
        </div>

        <div class="col">
            <h4>Diamond Club</h4>
            <a href="#">Pricing</a>
            <a href="#">History</a>
            <a href="#">Return</a>
            <a href="#">Application</a>
            <a href="#">Rules</a>
        </div>

        <div class="copyright">
            <p>© 2023 Yash-Jewellery. All rights reserved.</p>
        </div>
    </footer>
    
</body>
</html>
