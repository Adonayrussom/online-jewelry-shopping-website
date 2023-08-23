<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Yash-Jewellery - Home</title>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>

        <section id="header">
            <a href="index.jsp"><img src="img/logonnn.jpg" class="logo" alt="Yash-Jewellery"
                                     width="80" height="80"></a>

            <div>             
                <ul id="navbar">
                    <li>
                        <form>
                            <label for="search">Search</label>
                            <input id="search" type="search" pattern=".*\S.*" required>
                            <span class="caret"></span>
                        </form>
                    </li>
                    <li><a class="active" href="index.jsp">Home</a></li>
                    <li><a  href="shop.jsp">Shop</a></li>                  
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                    <li><a href="register.jsp">Register</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li id="lg-bag"><a href="cart.html"><i class="far fa-shopping-bag"></i></a></li>
                    <a href="#" id="close"><i class="far fa-times"></i></a>
                </ul>              
            </div>
            <div id="mobile">
                <a href="cart.html"><i class="fas fa-shopping-bag"></i></a>
                <i id="bar" class="fas fa-outdent"></i>
            </div>
        </section>


        <section id="hero" style="background-image: url('img/homepageimg.png');">  
            <div class="hero-content">
                <div class="hero-text">
                    <h3>Super value deals</h3>
                    <h2>On all products</h2>
                    <h1>The Best Jeweler For You</h1>
                    <p>Welcome to Yash Jewelry and Co, where exquisite craftsmanship meets timeless elegance.</p>
                    <button class="button-34" role="button" href="shop.jsp" onclick="window.location.href = 'shop.jsp';">Shop Now</button>
                </div>
            </div>
        </section>

        <h2 class="category-header">Shop by Category</h2>
        <section id="feature" class="section-p1">

            <div class="fe-box" onclick="window.location.href = 'neckless.jsp';">
                <img src="neckless/necklesspage.jpg" width="150" height="150" alt="">
                <h6>Necklace</h6>
            </div>
            <div class="fe-box" onclick="window.location.href = 'earrings.jsp';">
                <img src="earings/earingpage.jpg" width="150" height="150" alt="">
                <h6>Earrings</h6>
            </div>
            <div class="fe-box" onclick="window.location.href = 'bracelets.jsp';">
                <img src="bracelets/braceletspage.jpg" width="150" height="150" alt="">
                <h6>Bracelets</h6>
            </div>
            <div class="fe-box" onclick="window.location.href = 'rings.jsp';">
                <img src="rings/ringspage.jpg" width="150" height="150" alt="">
                <h6>Rings</h6>
            </div>
            <div class="fe-box" onclick="window.location.href = 'pendants.jsp';">
                <img src="pendants/pendantspage.jpg" width="150" height="150" alt="">
                <h6>Pendants</h6>
            </div>
            <div class="fe-box" onclick="window.location.href = 'brooch.jsp';">
                <img src="brooch/broochespage.jpg" width="150" height="150" alt="">
                <h6>Brooches</h6>
            </div>
        </section>

        <section id="product1" class="section-p1">
            <h2>Featured Products</h2>
            <p>Create everlasting memories with our elegant jewelry sets.</p>
            <div class="fe-box1">
                <img src="img/homepageimg.png" alt="">
                <h6>The Perfect Jewelry For Your Loved. Explore Now</h6>
            </div>

            <div class="pro-container">
                <div class="pro">
                    <img src="featuredpics/coppergold.jpg" alt="">
                    <div class="des" onclick="window.location.href = 'coppergoldnecklace.jsp';">
                        <h5>Copper Gold plated</h5>
                        <div><h4>$79.50 USD</h4></div>
                        <a href="#" onclick="addToCart('Copper Gold Plated', 79.50)"><i class="fal fa-shopping-bag cart"></i></a>
                    </div>
                </div>

                <div class="pro">
                    <img src="featuredpics/goldchain.jpg" alt="">
                    <div class="des" onclick="window.location.href = 'goldchain.jsp';">
                        <h5>Chain Necklace Gold</h5>
                        <div><h4>$45.00 USD</h4></div>
                        <a href="#" onclick="addToCart('Chain Necklace Gold', 45.00)"><i class="fal fa-shopping-bag cart"></i></a>
                    </div>
                </div>

                <div class="pro">
                    <img src="featuredpics/diamondbrooch.jpg" alt="">
                    <div class="des" onclick="window.location.href = 'diamondbrooch.jsp';">
                        <h5>Diamond Brooch</h5>
                        <div><h4>$55.00 USD</h4></div>
                        <a href="#" onclick="addToCart('Diamond Brooch', 55.00)"><i class="fal fa-shopping-bag cart"></i></a>
                    </div>
                </div>

                <div class="pro">
                    <img src="featuredpics/zinkgold.jpg" alt="">
                    <div class="des" onclick="window.location.href = 'zinkgold.jsp';">
                        <h5>Zircon Gold Plated Ring</h5>
                        <div><h4>$45.75 USD</h4></div>
                        <a href="#" onclick="addToCart('Zircon Gold Plated Ring', 45.75)"><i class="fal fa-shopping-bag cart"></i></a>
                    </div>
                </div>

            </div>
        </section>

        <section id="product1" class="section-p1">
            <h2>Featured Products</h2>
            <p>Create everlasting memories with our elegant jewelry sets.</p>


            <div class="pro-container">
                <div class="pro">
                    <img src="earings/goldhoop.jpg" alt="">
                    <div class="des" onclick="window.location.href = 'goldhoop.jsp';">
                        <h5>Gold Hoop Earrings</h5>
                        <div><h4>$49.00 USD</h4></div>
                        <a href="#" onclick="addToCart('Gold Hoop Earrings', 49.00)"><i class="fal fa-shopping-bag cart"></i></a>
                    </div>
                </div>

                <div class="pro">
                    <img src="bracelets/goldhoopbr.jpg" alt="">
                    <div class="des" onclick="window.location.href = 'goldhoopbr.jsp';">
                        <h5>Gold Hoop Bracelet</h5>
                        <div><h4>$50.74 USD</h4></div>
                        <a href="#" onclick="addToCart('Gold Hoop Bracelet', 50.74)"><i class="fal fa-shopping-bag cart"></i></a>
                    </div>
                </div>

                <div class="pro">
                    <img src="pendants/goldhooppen.jpg" alt="">
                    <div class="des" onclick="window.location.href = 'goldhooppen.jsp';">
                        <h5>Gold Hoop Pendant</h5>
                        <div><h4>$57.25 USD</h4></div>
                        <a href="#" onclick="addToCart('Gold Hoop Pendant', 57.25)"><i class="fal fa-shopping-bag cart"></i></a>
                    </div>
                </div>

                <div class="pro">
                    <img src="brooch/goldhoopbrooch.jpg" alt="">
                    <div class="des" onclick="window.location.href = 'goldhoopbrooch.jsp';">
                        <h5>Gold Hoop Brooch</h5>
                        <div><h4>$25.69 USD</h4></div>
                        <a href="#" onclick="addToCart('Gold Hoop Brooch', 25.69)"><i class="fal fa-shopping-bag cart"></i></a>
                    </div>
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
