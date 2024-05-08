<?php

session_start();

if (isset($_SESSION["user_id"])) {
    
    header("Location: login_success.php");
}

?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
	  <title>My website</title>
    <link rel="stylesheet" href="css/style_duong.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/cover-box.css">
    <link rel="stylesheet" href="css/default_homepage.css">
    <script src="https://kit.fontawesome.com/2b6ded1a1f.js" crossorigin="anonymous"></script>
  </head>
  <body>

    <!-- header  -->
    <div class="header">
      <div class="header-left-section">
          <a href="homepage.php"><img class="header-logo" src="img/logo_DABM.png" alt="Logo"></a>
      </div>
      <div class="header-nav-links">
          <a href="homepage.php">Trang chủ</a>
          <a href="features_product_nologin.php">Cửa hàng</a>
          <a href="about_us_login.php">Giới thiệu</a>
          <a href="contact_login.php">Liên hệ</a>
      </div>
      <div class="header-right-section">
          <a onclick="redirectToLoginPage()" href="#"><img class="header-icon" src="img/icon_user.png" alt="Icon 1"></a>
          <button id="toggleBtn"><i class="fa-solid fa-magnifying-glass"></i></button>
          <a href="#"><img class="header-icon" src="img/icon_heart.png" alt="Icon 3"></a>
      </div>

      <button class="header-login-button" onclick="redirectToLoginPage()">
        Đăng nhập
      </button>
      <script>
        function redirectToLoginPage() {
          // Add code to redirect to the login page
          window.location.href = 'login.php'; // Replace 'login.html' with the actual URL of your login page
        }
      </script>
    </div>

    

    <!-- search bar -->
    <div id="hiddenElement" class="hidden">
      <div class="search-box">
        <div class="row">
          <input type="text" id="input-box" placeholder="Nhập tên sách cần tìm" autocomplete="off">
          <button onclick="searchButton()"><i class="fa-solid fa-magnifying-glass"></i></button>
        </div>
        <div class="result-box">
        </div>
      </div>
      <script src="js/homepage.js"></script>
    </div>


    <!-- content -->
    <img class="BOOKSTORE" src="img/Danh/bookstore-1.png" />

    <div class="title">Danh Mục Sản Phẩm</div>
    <div class="description">Tìm mua sách theo thể loại mà bạn yêu thích</div>
    <div class="image-container">
      <figure>
        <img src="img/Danh/image-107.png" alt="Tiểu thuyết" class="image">
        <figcaption class="book-title">VĂN HỌC</figcaption>
      </figure> 
      <figure>
        <img src="img/Danh/image-108.png" alt="Giáo khoa - tham khảo" class="image">
        <figcaption class="book-title">GIÁO KHOA - THAM KHẢO</figcaption>
      </figure>
      <figure>
        <img src="img/Danh/image-109.png" alt="Thiếu nhi" class="image">
        <figcaption class="book-title">THIẾU NHI</figcaption>
      </figure>
    </div>


    <!-- footer -->
    <div class="footer">
      <footer>
          <div class="container">
              <div class="row">
                  <div class="col-md-6 col-lg-4 item">
                      <h3><img class="footer-logo" src="img/logo_DABM_2.png" alt="Logo"></h3>
                      <ul>
                          <br>
                          <li>268 Lý Thường Kiệt, phường 14, quận</li>
                          <li>10, TP Hồ Chí Minh, Việt Nam</li>
                      </ul>
                  </div>
                  <div class="col-md-6 col-lg-2 item">
                      <h3>LIÊN KẾT</h3>
                      <ul>
                          <br>
                          <li><a href="login_success.php">Trang chủ</a></li>
                          <br>
                          <li><a href="features_product_login.php">Cửa hàng</a></li>
                          <br>
                          <li><a href="about_us_login.php">Giới thiệu về DABM</a></li>
                          <br>
                          <li><a href="contact_login.php">Liên hệ</a></li>
                          <br>
                      </ul>
                  </div>
                  <div class="col-md-6 col-lg-2 item">
                      <h3>VỀ DABM</h3>
                      <ul>
                          <br>
                          <li><a href="#">Điều khoản</a></li>
                          <br>
                          <li><a href="customer_order_history.php">Thanh toán</a></li>
                          <br>
                          <li><a href="#">Chính sách bảo mật</a></li>
                      </ul>
                  </div>
                  <div class="col-md-6 col-lg-4 item">
                      <h3>NHẬN THÔNG BÁO QUA EMAIL</h3>
                      <ul>
                          <br>
                          <div class="p-1 rounded border">
                              <div class="input-group">
                                  <input type="email" placeholder="Nhập email của bạn" class="form-control border-0 shadow-0">
                                  <div class="input-group-append">
                                      <a class="email_signup_button" href="index.html">ĐĂNG KÝ</a>
                                  </div>
                              </div>
                          </div>
                      </ul>
                  </div>
              </div>
              <hr>
              <p>
                  <div style="display: flex; justify-content: space-between; opacity:1; font-size:13px; margin-bottom:0;">
                  <div style="text-align: left;">2023 DABM. Tất cả các quyền được bảo lưu</div>
                  <div style="text-align: right;">Quốc gia & Khu vực: Việt Nam</div>
              </div></p>
          </div>
      </footer>
    </div> 
  </body>
</html>
