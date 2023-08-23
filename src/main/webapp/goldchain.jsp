<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Yash-Jewellery - Home</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <link rel="stylesheet" href="css/style.css">
        <style>
            .feature-list {
                list-style: none;
                padding: 0;
                margin: 0;
            }

            .feature-list li {
                display: flex;
                align-items: center;
                margin-bottom: 10px;
            }

            .feature-list li i {
                margin-right: 10px;
            }
        </style>
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
                    <li><a  href="index.jsp">Home</a></li>
                    <li><a class="active" href="shop.jsp">Shop</a></li>                  
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

        <section id="prodetails" class="section-p1">
            <div class="single-pro-image">
                <img src="featuredpics/goldchain.jpg" width="100%" id="MainImg" alt="">


            </div>       
            <div class="single-pro-image">
                <h6>Home / Chain Gold</h6>
                <h4>Chain Necklace Gold</h4>
                <h2>$45.00</h2>
                <select>
                    <option>Gold</option>
                    <option>Silver</option>
                    <option>Platinum</option>
                </select>
                <input type="number" id="quantityInput" value="1">
                <button class="normal" id="addToCartBtn">Add to Cart</button>
                <ul class="feature-list">
                    <li><i class="fas fa-truck"></i> Free Shipping</li>
                    <li><i class="fas fa-bolt"></i> Fast Delivery</li>
                    <li><i class="fas fa-lock"></i> Secure Payment</li>
                    <li><i class="fas fa-undo"></i> Free Return</li>
                </ul>
                <h4>Product Details</h4>
                <span>Elevate your style with our stunning Copper Gold Plated Necklace. 
                    This exquisite piece of jewelry is meticulously crafted to add a
                    touch of elegance and sophistication to any outfit.</span>
            </div>
        </section>

        <script>
            // Add to Cart functionality
            const addToCartBtn = document.getElementById('addToCartBtn');

            addToCartBtn.addEventListener('click', () => {
                const selectedOption = document.getElementById('productOptions').value;
                const quantity = parseInt(document.getElementById('quantityInput').value);

                const newItem = {
                    productName: 'Copper Gold Plated Necklace',
                    price: 79.50,
                    option: selectedOption,
                    quantity: quantity
                };

                let cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
                cartItems.push(newItem);
                localStorage.setItem('cartItems', JSON.stringify(cartItems));

                alert('Item added to cart successfully!');
            });
        </script>

        <section id="product1" class="section-p1">
            <h2>Featured Products</h2>
            <p>Create everlasting memories with our elegant jewelry sets.</p>


            <div class="pro-container">
                <div class="pro">
                    <img src="earings/goldhoop.jpg" alt="">
                    <div class="des" onclick="window.location.href = 'goldhoop.jsp';">
                        <h5>Gold Hoop Earrings</h5>
                        <div><h4>$49.00 USD</h4></div>
                        <a href="#"><i class="fal fa-shopping-bag cart"></i></a>
                    </div>
                </div>

                <div class="pro">
                    <img src="bracelets/goldhoopbr.jpg" alt="">
                    <div class="des" onclick="window.location.href = 'goldhoopbr.jsp';">
                        <h5>Gold Hoop Bracelet</h5>
                        <div><h4>$50.74 USD</h4></div>
                        <a href="#"><i class="fal fa-shopping-bag cart"></i></a>
                    </div>
                </div>

                <div class="pro">
                    <img src="pendants/goldhooppen.jpg" alt="">
                    <div class="des" onclick="window.location.href = 'goldhooppen.jsp';">
                        <h5>Gold Hoop Pendant</h5>
                        <div><h4>$57.25 USD</h4></div>
                        <a href="#"><i class="fal fa-shopping-bag cart"></i></a>
                    </div>
                </div>

                <div class="pro">
                    <img src="brooch/goldhoopbrooch.jpg" alt="">
                    <div class="des" onclick="window.location.href = 'goldhoopbrooch.jsp';">
                        <h5>Gold Hoop Brooch</h5>
                        <div><h4>$25.69 USD</h4></div>
                        <a href="#"><i class="fal fa-shopping-bag cart"></i></a>
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

        <script>
            var MainImg = document.getElementById("MainImg");
            var smallimg = document.getElementById("small-img");

            smallimg[0].onclick = function () {
                MainImg.src = smallimg[0].src;
            }
        </script>
    </body>
</html>
