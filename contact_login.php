<?php
    session_start();
    if(!isset($_SESSION['user_id'])){
        header('location:contact_nologin.html');
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
	<title>My website</title>
    <link rel="stylesheet" href="css/contact.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/cover-box.css">
</head>
<body>
    <!-- header -->
    <div class="header">
        <div class="header-left-section">
            <a href="login_success.php"><img class="header-logo" src="img/logo_DABM.png" alt="Logo"></a>
        </div>
        <div class="header-nav-links">
            <a href="login_success.php">Trang chủ</a>
            <a href="features_product_login.php">Cửa hàng</a>
            <a href="about_us_login.php">Giới thiệu</a>
            <a href="contact_login.php">Liên hệ</a>
        </div>
        <div class="header-right-section">
            <a href="user_copy.php"><img class="header-icon" src="img/icon_user.png" alt="Icon 1"></a>
            <a href="#"><img class="header-icon" src="img/icon_news.png" alt="Icon 2"></a>
            <a href="#"><img class="header-icon" src="img/icon_heart.png" alt="Icon 3"></a>
            <a href="cart.php"><img class="header-icon" src="img/icon_cart.png" alt="Icon 3"></a>
            <button class="header-login-button" onclick="redirectToLogout()">
                Đăng xuất
            </button>
            <script>
                function redirectToLogout() {
                // Add code to redirect to the login page
                window.location.href = 'logout.php'; // Replace 'login.html' with the actual URL of your login page
                }
            </script>
        </div>
    </div>

    <!-- content goes here -->
    <div class="content">
        <h2 class="title">Liên hệ</h2>
        <div class="map">
            <iframe style="width:100%; height:450px; border:0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.5115795957554!2d106.65532687480476!3d10.772074989376424!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752ec3c161a3fb%3A0xef77cd47a1cc691e!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBCw6FjaCBraG9hIC0gxJDhuqFpIGjhu41jIFF14buRYyBnaWEgVFAuSENN!5e0!3m2!1svi!2s!4v1714124489161!5m2!1svi!2s" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>        
        <div class="contact-info">
            <div class="form-container">
                <input class="form-field" type="text" placeholder="Tên của bạn">
                <input class="form-field" type="email" placeholder="Nhập email của bạn">
                <textarea class="form-field" placeholder="Nội dung"></textarea>
                <button type="submit">Xác nhận</button>
            </div>     
            <div class="info">
                <div class="info-item">
                    <p><strong>Địa chỉ:</strong></p>
                    <p>268 Lý Thường Kiệt, p14, q10, TP Hồ Chí Minh, Việt Nam</p>
                </div>
                <div class="info-item">
                    <p><strong>Email:</strong></p>
                    <p>DABM@gmail.com</p>
                </div>
                <div class="info-item">
                    <p><strong>Điện thoại:</strong></p>
                    <p>(+84) 123 456 789</p>
                </div>
            </div>   
        </div>
    </div>
    <!-- content goes here -->

    <div class="footer">
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-4 item">
                        <h3><img class="footer-logo" src="img/logo_DABM_2.png" alt="Logo"></h3>
                        <ul>
                            <li><br></li>
                            <li>268 Lý Thường Kiệt, phường 14, quận</li>
                            <li>10, TP Hồ Chí Minh, Việt Nam</li>
                        </ul>
                    </div>
                    <div class="col-md-6 col-lg-2 item">
                        <h3>LIÊN KẾT</h3>
                        <ul>
                            <li><br></li>
                            <li><a href="login_success.php">Trang chủ</a></li>
                            <li><br></li>
                            <li><a href="features_product_login.php">Cửa hàng</a></li>
                            <li><br></li>
                            <li><a href="about_us_login.php">Giới thiệu về DABM</a></li>
                            <li><br></li>
                            <li><a href="contact_login.php">Liên hệ</a></li>
                            <li><br></li>
                        </ul>
                    </div>
                    <div class="col-md-6 col-lg-2 item">
                        <h3>VỀ DABM</h3>
                        <ul>
                            <li><br></li>
                            <li><a href="#">Điều khoản</a></li>
                            <li><br></li>
                            <li><a href="customer_order_history.php">Thanh toán</a></li>
                            <li><br></li>
                            <li><a href="#">Chính sách bảo mật</a></li>
                        </ul>
                    </div>
                    <div class="col-md-6 col-lg-4 item">
                        <h3>NHẬN THÔNG BÁO QUA EMAIL</h3>
                        <ul>
                            <li><br></li>
                            <div class="p-1 rounded border">
                                <div class="input-group">
                                    <input type="email" placeholder="Nhập email của bạn" class="form-control border-0 shadow-0">
                                    <div class="input-group-append">
                                        <a class="email_signup_button" href="#">ĐĂNG KÝ</a>
                                    </div>
                                </div>
                            </div>
                        </ul>
                    </div>
                </div>
                <hr>
                <div style="display: flex; justify-content: space-between; opacity:1; font-size:13px; margin-bottom:0;">
                    <div style="text-align: left;">2023 DABM. Tất cả các quyền được bảo lưu</div>
                    <div style="text-align: right;">Quốc gia & Khu vực: Việt Nam</div>
                </div>
            </div>
        </footer>
    </div>  
</body>