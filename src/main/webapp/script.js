const bar = document.getElementById('bar');
const close = document.getElementById('close');
const nav = document.getElementById('navbar');

if (bar) {
    bar.addEventListener('click', () => {
        nav.classList.add('active');
    })
}

if (close) {
    close.addEventListener('click', () => {
        nav.classList.remove('active');
    })
}

function addToCart(productName, price) {
    // Retrieve the cart items from local storage or initialize an empty array
    let cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];

    // Check if the product is already in the cart
    const existingItem = cartItems.find(item => item.productName === productName);

    if (existingItem) {
        // If the product already exists, update the quantity
        existingItem.quantity++;
    } else {
        // If the product is new, add it to the cart
        const newItem = {
            productName: productName,
            price: price,
            quantity: 1
        };
        cartItems.push(newItem);
    }

    // Save the updated cart items to local storage
    localStorage.setItem('cartItems', JSON.stringify(cartItems));

    // Redirect the user to the cart page
    window.location.href = 'cart.html';
}