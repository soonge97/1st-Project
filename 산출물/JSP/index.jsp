<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./css/reset.css" />
    <link rel="stylesheet" href="./css/style.css" />
    <!-- icon -->
    <link
      href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css"
      rel="stylesheet"
    />
    <!-- font -->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Source+Serif+Pro:wght@400;700&display=swap"
      rel="stylesheet"
    />
    <title>ShoesMall</title>
  </head>
  <body>
    <!-- header -->
    <div class="top">
  <nav class="top-nav">
    <button type="button" class="top-nav-modal">
      <i class="bx bxs-grid"></i>
    </button>
    <%
    if(session.getAttribute("userID")==null){
        out.println("<a href='login.jsp' class='top-title'>Login</a>");
    }else{
        String userID=(String)session.getAttribute("userID");
	out.println("<div class='top-title'>");
        out.println(userID+"님 환영합니다.");
	out.println("</div>");
    }
    %>
    <a href="cart.html" class="top-nav-cart">
      <i class="bx bx-cart"></i>
      <strong class="top-cart-count count-mobile"></strong>
    </a>
    <div class="top-category">
      <ul class="category-box">
        <li class="category-item">
          <a href="index.jsp#new">New</a>
        </li>
        <li class="category-item">
          <a href="index.jsp#goods">Goods</a>
        </li>
        <li class="category-item">
          <a href="wishlist.html">Wish</a>
        </li>
        <li class="category-item">
          <div class="top-cart">
            <a href="cart.html">Cart</a>
            <strong class="top-cart-count count-desk"></strong>
          </div>
        </li>
	<%
	if(session.getAttribute("userID")==null){
		out.println("<li class='category-item'>");
		out.println("<a href='signup.jsp'>Sign Up</a>");
		out.println("</li>");
	}else{
	        String userID=(String)session.getAttribute("userID");
		out.println("<li class='category-item'>");
		out.println("<a href='logout.jsp'>Log out</a>");
		out.println("</li>");
	}
	%>
      </ul>
    </div>
  </nav>
</div>

    <!-- landing Page -->
    <section id="home" class="home">
	<br />
      <div class="landing">
        <div class="landing-image-box">
          <img src="./upassets/shoes_dior.png" alt="shoes-image" />
        </div>
        <div class="landing-desc-box">
          <div class="sec-top">
            <h2 class="sec-tit">Dior - Jordon - 715</h2>
            <p class="sec-desc">shoes very expensive</p>
          </div>
          <a href="detail.html?8" class="landing-detail-link">More</a>
        </div>
      </div>
    </section>

    <!-- new item-->
    <section id="new" class="new-page">
      <div class="sec-top new-top">
        <h1 class="sec-tit new-tit">New Item</h1>
        <p class="sec-desc">Look for new items</p>
      </div>
      <ul class="new-box">
        <li class="new-box-list">
          <a href="detail.html?17" class="new-item-link">
            <img
              src="./upassets/shoes_blue3.png"
              alt="new goods"
              class="new-item"
            />
          </a>
        </li>
        <li class="new-box-list">
          <a href="detail.html?16" class="new-item-link">
            <img
              src="./upassets/shoes_blue4.png"
              alt="new goods"
              class="new-item"
            />
          </a>
        </li>
        <li class="new-box-list">
          <a href="detail.html?3" class="new-item-link">
            <img
              src="./upassets/shoes_blue5.png"
              alt="new goods"
              class="new-item"
            />
          </a>
        </li>
        <li class="new-box-list">
          <a href="detail.html?1" class="new-item-link">
            <img
              src="./upassets/shoes_navy.png"
              alt="new goods"
              class="new-item"
            />
          </a>
        </li>
        <li class="new-box-list">
          <a href="detail.html?19" class="new-item-link">
            <img
              src="./upassets/shoes_whiteblue2.png"
              alt="new goods"
              class="new-item"
            />
          </a>
        </li>
        <li class="new-box-list">
          <a href="detail.html?14" class="new-item-link">
            <img
              src="./upassets/shoes_skyblue1.png"
              alt="new goods"
              class="new-item"
            />
          </a>
        </li>
        <li class="new-box-list">
          <a href="detail.html?5" class="new-item-link">
            <img
              src="./upassets/shoes_white2.png"
              alt="new goods"
              class="new-item"
            />
          </a>
        </li>
        <li class="new-box-list">
          <a href="detail.html?8" class="new-item-link">
            <img
              src="./upassets/shoes_white4.png"
              alt="new goods"
              class="new-item"
            />
          </a>
        </li>
      </ul>
    </section>
  
    <!-- goods -->
    <main id="goods" class="goods-page">
      <div class="sec-top">
        <h1 class="sec-tit">Goods</h1>
        <p class="sec-desc goods-desc">Choose the product you like</p>
      </div>
      <div class="goods-sort">
        <select name="color-choice" class="goods-item color-item">
          <option selected>All Color</option>
          <option
            data-key="color"
            data-value="black"
            class="choice-sort select-black"
          >
            Black
          </option>
          <option
            data-key="color"
            data-value="blue"
            class="choice-sort select-blue"
          >
            Blue
          
          </option>
          <option
            data-key="color"
            data-value="white"
            class="choice-sort select-white"
          >
            White
          
        </select>
      </div>
      <ul class="goods-container"></ul>
      <ol class="goods-pagination"></ol>
    </main>

    <!-- footer -->
    <footer data-include-path="footer.html"></footer>

    <script type="module" src="./js/main.js"></script>
    <script type="module" src="./js/loadItem.js"></script>
  </body>
</html>


