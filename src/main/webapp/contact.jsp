<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Yash-Jewellery - Contact Us</title>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>

        <section id="header">
            <a href="index.jsp"><img src="img/logon.png" class="logo" alt="Yash-Jewellery" width="80" height="80"></a>

            <div>             
                <ul id="navbar">
                    <li>
                        <form>
                            <label for="search">Search</label>
                            <input id="search" type="search" pattern=".*\S.*" required>
                            <span class="caret"></span>
                        </form>
                    </li>
                    <li><a  href="index.jsp">Home</a></li>
                    <li><a href="shop.jsp">Shop</a></li>                  
                    <li><a href="about.jsp">About</a></li>
                    <li><a class="active" href="contact.jsp">Contact</a></li>
                    <li><a href="register.jsp">Register</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="cart.html"><i class="far fa-shopping-bag"></i></a></li>
                </ul>              
            </div>
        </section>

        <section id="contact-content" class="section-p1">
            <div class="col">
                <h2>Contact Us</h2>
                <p>Feel free to get in touch with us. We'd love to hear from you.</p>
                <div class="contact-info">
                    <h4>Address</h4>
                    <p>1234 Nairobi Road, Street, Nairobi</p>

                    <h4>Email</h4>
                    <p>info@yash-jewellery.com</p>

                    <h4>Phone</h4>
                    <p>+01 2345 6542 / (+91) 01 4532 4654</p>

                    <h4>Working Hours</h4>
                    <p>Monday to Saturday: 10:00 AM - 6:00 PM</p>
                </div>
            </div>

            <div class="account-page">
                <div class="form-container">
                    <form id="LoginForm" action="login" method="POST">
                        <h2>Send us a Message</h2>
                        <input type="text" placeholder="Username" required="required" name="username">
                        <input type="email" placeholder="email" required="required" name="email">
                        <button type="submit" class="btn">Send</button>

                    </form>

                </div>
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

        <script src="script.js"></script> 
    </body>
</html>
