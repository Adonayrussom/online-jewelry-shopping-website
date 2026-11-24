// Yash-Jewellery front end (static, runs on GitHub Pages)
(function () {
  var CART_KEY = 'cartItems';
  function getCart() { try { return JSON.parse(localStorage.getItem(CART_KEY)) || []; } catch (e) { return []; } }
  function saveCart(c) { localStorage.setItem(CART_KEY, JSON.stringify(c)); updateBadge(); }
  function parsePrice(t) { var m = String(t).replace(/,/g, '').match(/[\d.]+/); return m ? parseFloat(m[0]) : 0; }
  function toast(msg, ok) {
    if (window.Toastify) { Toastify({ text: msg, duration: 2500, gravity: 'top', position: 'center', backgroundColor: ok === false ? 'red' : 'green' }).showToast(); return; }
    var d = document.createElement('div');
    d.textContent = msg;
    d.style.cssText = 'position:fixed;top:20px;left:50%;transform:translateX(-50%);background:' + (ok === false ? '#c0392b' : '#088178') + ';color:#fff;padding:12px 22px;border-radius:6px;z-index:9999;font-family:sans-serif;box-shadow:0 4px 12px rgba(0,0,0,.2)';
    document.body.appendChild(d); setTimeout(function () { d.remove(); }, 2500);
  }
  window.showToast = toast;
  function addItem(name, price, qty, option) {
    qty = Math.max(1, parseInt(qty, 10) || 1);
    var cart = getCart();
    var ex = cart.find(function (i) { return i.productName === name && (i.option || '') === (option || ''); });
    if (ex) ex.quantity += qty; else cart.push({ productName: name, price: price, quantity: qty, option: option || '' });
    saveCart(cart);
    toast(name + ' added to cart');
  }
  window.addToCart = function (name, price) { addItem(name, parsePrice(price), 1); };
  function updateBadge() {
    var n = getCart().reduce(function (s, i) { return s + (i.quantity || 0); }, 0);
    document.querySelectorAll('a[href="cart.html"]').forEach(function (a) {
      var b = a.querySelector('.cart-count');
      if (!b) { b = document.createElement('span'); b.className = 'cart-count'; b.style.cssText = 'background:#088178;color:#fff;border-radius:10px;font-size:11px;padding:1px 6px;margin-left:4px;vertical-align:top'; a.appendChild(b); }
      b.textContent = n; b.style.display = n ? 'inline-block' : 'none';
    });
  }

  var started = false;
  function init() {
    if (started) return; started = true;
    // Mobile menu
    var bar = document.getElementById('bar'), close = document.getElementById('close'), nav = document.getElementById('navbar');
    if (bar && nav) bar.addEventListener('click', function () { nav.classList.add('active'); });
    if (close && nav) close.addEventListener('click', function (e) { e.preventDefault(); nav.classList.remove('active'); });

    // Product detail page
    var pd = document.getElementById('prodetails');
    var btn = document.getElementById('addToCartBtn');
    if (pd && btn) {
      btn.addEventListener('click', function () {
        var name = pd.querySelector('h4').textContent.trim();
        var price = parsePrice(pd.querySelector('h2').textContent);
        var sel = pd.querySelector('select');
        var q = document.getElementById('quantityInput');
        addItem(name, price, q ? q.value : 1, sel ? sel.value : '');
      });
      var q = document.getElementById('quantityInput'); if (q) q.min = 1;
      var main = document.getElementById('MainImg');
      document.querySelectorAll('.small-img').forEach(function (s) { s.addEventListener('click', function () { if (main) main.src = s.src; }); });
    }

    // Quick add from product cards
    document.querySelectorAll('.pro .cart').forEach(function (icon) {
      var link = icon.closest('a') || icon;
      link.addEventListener('click', function (e) {
        e.preventDefault(); e.stopPropagation();
        var des = icon.closest('.des');
        addItem(des.querySelector('h5').textContent.trim(), parsePrice(des.querySelector('h4').textContent), 1);
      });
    });

    // Search: go to shop and filter by name
    document.querySelectorAll('#navbar form').forEach(function (f) {
      f.addEventListener('submit', function (e) {
        e.preventDefault();
        var v = f.querySelector('input').value.trim();
        if (v) location.href = 'shop.html?q=' + encodeURIComponent(v);
      });
    });
    var q2 = new URLSearchParams(location.search).get('q');
    if (q2) {
      var term = q2.toLowerCase(), shown = 0;
      document.querySelectorAll('.pro').forEach(function (p) {
        var h = p.querySelector('h5'); var ok = h && h.textContent.toLowerCase().indexOf(term) > -1;
        p.style.display = ok ? '' : 'none'; if (ok) shown++;
      });
      var s = document.getElementById('search'); if (s) s.value = q2;
      if (!shown) toast('No products match "' + q2 + '"', false);
    }

    // Contact form
    var cf = document.getElementById('ContactForm');
    if (cf) cf.addEventListener('submit', function (e) { e.preventDefault(); cf.reset(); toast('Thanks! Your message has been sent.'); });

    updateBadge();
  }
  if (document.readyState === 'loading') document.addEventListener('DOMContentLoaded', init); else init();
  window.YJCart = { get: getCart, save: saveCart, toast: toast };
})();
