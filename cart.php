<?php
include 'connection.php';

// Connect to database
// $con = mysqli_connect("localhost:3307","root","","doan");
// Check connection
// if (mysqli_connect_errno()) {
//     echo "Failed to connect to MySQL: " . mysqli_connect_error();
//     exit();
// }   

// When click on the 'Mua hang' button


?>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
	<title>My website</title>
    <link rel="stylesheet" href="css/cart.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/cover-box.css">
    <script src="javascript/address_script.js"></script>
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
    <div class="box"> <!--cover-box.css-->
        <img src="img/logo_DABM_3.png" alt="Home Icon" width="50px">
        <p class="box-text">Giỏ hàng</p>
    </div>

    <div class="content">
        <?php
            $user_ID = $_SESSION['user_id'];
            // $sql = "SELECT book_name, sale_price, cart_quantity
            // FROM book, cart_include
            // WHERE book.book_ID = cart_include.book_ID AND cart_include.ID = $user_ID" ;
            // also select book_ID
            $sql = "SELECT book.book_ID, book_name, sale_price, cart_quantity
            FROM book, cart_include
            WHERE book.book_ID = cart_include.book_ID AND cart_include.ID = $user_ID" ;
            $result = mysqli_query($con, $sql);
        ?>
        <table>
            <tr>
                <th>ID</th>
                <th>Sản Phẩm</th>
                <th>Giá</th> 
                <th>Số Lượng</th>
                <th>Tổng Phụ</th>
                <th></th>
            </tr>
            <form method="POST">
            <?php
                $total = 0;
                while ($row = mysqli_fetch_assoc($result)) {
                    $subtotal = $row['sale_price'] * $row['cart_quantity'];
                    $total += $subtotal;
                    echo "<tr>";
                    echo "<td>" . $row['book_ID'] . "</td>";
                    echo "<td>" . $row['book_name'] . "</td>";
                    echo "<td>" . $row['sale_price'] . " VND</td>";
                    echo "<td>" . $row['cart_quantity'] . "</td>";
                    echo "<td>" . $subtotal . " VND</td>";
                    echo "<td><input type='checkbox' class='selectBook' value='" . $subtotal . "'></td>";
                    echo "</tr>";
                }
            ?>
            </form>
        </table>
        <div class="total">
            <h2>Tổng Thanh Toán</h2>
            <p id="total">Tổng: 0 VND</p>
            <button type="button" onclick="Buy_a_book()">Mua Hàng</button>
        </div>
        <script>
            var checkboxes = document.getElementsByClassName('selectBook');
            for (var i = 0; i < checkboxes.length; i++) {
                checkboxes[i].addEventListener('change', function() {
                    var total = 0;
                    for (var j = 0; j < checkboxes.length; j++) {
                        if (checkboxes[j] !== this) {
                            checkboxes[j].checked = false;
                        }
                        if (checkboxes[j].checked) {
                            total += parseInt(checkboxes[j].value);
                        }
                    }
                    document.getElementById('total').innerText = 'Tổng: ' + total + ' VND';
                });
            }
            function Buy_a_book() {
                var checkboxes = document.getElementsByClassName('selectBook');
                // take the book_ID of the selected book
                var book_ID = 0;
                for (var i = 0; i < checkboxes.length; i++) {
                    if (checkboxes[i].checked) {
                        book_ID = checkboxes[i].parentElement.parentElement.children[0].innerText;
                        break;
                    }
                }
                // send the book_ID to the next page
                window.location.href = 'customer_create_order.php?id=' + book_ID;
            }
        </script>
    </div>
    <!-- content goes here -->

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