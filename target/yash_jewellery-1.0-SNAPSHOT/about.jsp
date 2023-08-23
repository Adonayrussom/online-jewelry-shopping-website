<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Yash-Jewellery - About Us</title>
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
                    <li><a class="active" href="about.jsp">About</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                    <li><a href="register.jsp">Register</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="cart.html"><i class="far fa-shopping-bag"></i></a></li>
                </ul>              
            </div>
        </section>

        <section id="page-header" class="about-header">
            <div class="header-background">
                <h2>About Us</h2>
                <p>Discover the beauty and craftsmanship of Yash-Jewellery.</p>
            </div>
        </section>

        <section id="about-content" class="section-p1">
            <div class="col">
                <h3>Our Story</h3>
                <p>Yash-Jewellery was founded with a passion for creating exquisite and timeless jewelry pieces. We are dedicated to capturing the beauty of nature and transforming it into stunning wearable art.</p>
                <p>With years of experience in the industry, our team of skilled artisans and designers work meticulously to craft each jewelry piece with utmost precision and attention to detail.</p>
                <p>We believe that jewelry holds a special place in people's lives, and it is our mission to create pieces that resonate with their individuality, style, and emotions.</p>
            </div>

            <div class="col">
                <h3>Our Commitment</h3>
                <p>At Yash-Jewellery, we are committed to delivering exceptional quality and exceptional customer service. We source only the finest materials and gemstones, ensuring that each piece is of the highest standard.</p>
                <p>Our commitment to sustainability is also an integral part of our brand. We strive to minimize our environmental impact by using ethically sourced materials and implementing eco-friendly practices throughout our production process.</p>
                <p>We value our customers and aim to provide a seamless and memorable shopping experience. Our knowledgeable and friendly customer support team is always available to assist with any inquiries or concerns.</p>
            </div>

            <div class="col">
                <h3>Our Collections</h3>
                <p>Explore our diverse collections, inspired by the beauty of nature, art, and culture. From delicate floral designs to bold statement pieces, our jewelry encompasses a wide range of styles to suit every occasion and personal taste.</p>
                <p>Whether you are searching for a unique gift or a timeless piece to add to your own collection, our curated selection offers something for everyone.</p>
                <p>We continuously strive to innovate and create new designs that reflect the latest trends while staying true to our commitment to quality and craftsmanship.</p>
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
