<?php
// Connect to your database
// Connect to your database
include_once('connection.php');
include_once('database_scripts/func_total_price_sale.php');


  // Get the orderId value from the URL parameter
  $orderId = $_GET["orderId"];

  // Prepare and execute the SQL query
  $sql = "SELECT order_ID, order_date, order_info, img_path, book_name, purchase_price,purchase_quantity, po.employee_ID, sur_name, last_name, email, phone_num, user_info
  FROM `order` AS o
  JOIN purchase_order AS po ON o.order_ID = po.purchase_ID
  JOIN purchase_include AS pi ON o.order_ID = pi.purchase_ID
  JOIN user AS u ON po.employee_ID = u.ID
  JOIN book AS b ON b.book_ID = pi.book_ID
  ";

 $stmt = $con->prepare($sql);
//  $stmt->bind_param("ii", $orderId,$stmt['order_ID']);
 $stmt->execute();

 $result = $stmt->get_result();
 $stmt_ = $con->prepare($sql);
//  $stmt->bind_param("ii", $orderId,$stmt['order_ID']);
 $stmt_->execute();
 $tmp = $stmt_->get_result();
 $small_sum = 0;
 $sum = total_price_purchase($con, $orderId);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Details</title>
    <link rel="stylesheet" href="css/style_duong.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <!-- <link rel="stylesheet" href="css/employee.css"> -->
    <link rel="stylesheet" href="css/logo.css">
    <link rel="stylesheet" href="css/order.css">
    <link rel="stylesheet" href="css/search.css">
</head>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
	<title>Xem chi tiết hóa đơn</title>
    <link rel="stylesheet" href="css/style_duong.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/cover-box.css">
    <link rel="stylesheet" href="css/table.css">
    <link rel="stylesheet" href="css/search.css">
    <link rel="stylesheet" href="css/logo.css">
</head>
<body>
    <!-- header -->
    <div class="header">
        <div class="header-left-section">
            <a href="index.html"><img class="header-logo" src="img/logo_DABM.png" alt="Logo"></a>
        </div>
        <div class="header-nav-links">
            <a href="./login_success.php">Trang chủ</a>
            <a href="./features_product_login.php">Cửa hàng</a>
            <a href="about_us_login.php">Giới thiệu</a>
            <a href="contact_login.php">Liên hệ</a>
        </div>
        <div class="header-right-section">
            <a href="user_employee.php"><img class="header-icon" src="img/icon_user.png" alt="Icon 1"></a>
            <a href="#"><img class="header-icon" src="img/icon_news.png" alt="Icon 2"></a>
            <a href="#"><img class="header-icon" src="img/icon_heart.png" alt="Icon 3"></a>
            <a href="#"><img class="header-icon" src="img/icon_cart.png" alt="Icon 3"></a>
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

    <div class="box">
        <img src="img/logo_DABM_3.png" alt="Home Icon" width="50px">
        <p class="box-text">Quản lý đơn hàng</p>
        <div>
            <a href="index.html">Cá nhân</a>
            <a href="#">></a>
            <a href="#">Quản lý đơn hàng</a>
        </div>
    </div>

    <!-- content -->
    <div class="content">
    <div class="side-box">
            <a href="user_employee.php"><img class="side-box-avatar" src="img/icon_user.png" alt="User Avatar"></a>
            <br>
            <!-- <p style="font-family: 'Times New Roman', Times, serif; font-size: 20px; font-weight: bold; margin-bottom: 0; color: #B88E2F">Nguyễn Ngọc</p>
            <p style="font-family: Arial, sans-serif; font-size: 13px; margin-bottom: 0; color: #B88E2F">ID: 00000001</p>
            <p style="font-family: Arial, sans-serif; font-size: 13px; color: #B88E2F;">Employee</p> -->
            <?php
            echo "<p style='font-family: Times New Roman, Times, serif; font-size: 20px; font-weight: bold; margin-bottom: 0; color: #B88E2F'>{$row['sur_name']} {$row['last_name']}</p>";
            echo "<p style='font-family: Arial, sans-serif; font-size: 13px; margin-bottom: 0; color: #B88E2F'>ID: {$user['ID']}</p>";
            if ($id == 00000001)
            {
                echo "<p style='font-family: Arial, sans-serif; font-size: 13px; color: #B88E2F;'>Manager</p>";
            }
            else
            {
                echo '<script>alert("You are not authorized to view this content.");</script>';
                echo '<script>window.location.href = "user_member.php";</script>';
                exit;
                echo "<p style='font-family: Arial, sans-serif; font-size: 13px; color: #B88E2F;'>Customer</p>";
            }
            ?>
            <a href="user_employee.php"><img class="side-box-button" src="img/button_personal_info.png" alt="Button1"></a>
            <a href="list_of_book.php"><img class="side-box-button" src="img/button_book_management.png" alt="Button1"></a>
            <a href="employee_order.php"><img class="side-box-button" src="img/button_check_receipt.png" alt="Button1"></a>
            <a href="book_statistic.php"><img class="side-box-last-button" src="img/button_book_logistics.png" alt="Button1"></a>
        </div>
        <div class="content-box">
        <?php   


while($item = mysqli_fetch_array($result)) { 

    if ($item['order_ID']!=$orderId) {

        continue;
    } else {

        $sp = $item;
    }
            ?>
            <div class="content-box">
            <img class = "logo" src="img/logo_DABM.png", alt="Logo">
            <br>
            <div class="center"><h1>Thông tin đơn hàng</h1></div>
            <div class="order-info-container">
                <div class="order-info">
                    <div>
                        <div><span class="label">Mã đơn hàng:</span> <?php echo $item['order_ID'] ?></div>
                        <div><span class="label">Ngày tạo đơn:</span> <?php echo $item['order_date'] ?></div>
                        <div><span class="label">Ghi chú:</span> <?php $info_parts = explode(', ', $item['order_info']);$note = isset($info_parts[2]) ? $info_parts[2] : '';echo $note ?></div>
                    </div>
                </div>
                <div class="total">
                    <span class="label">Tổng tiền thanh toán:</span> <?php echo $sum ?>
                </div>
            </div>
            </div>
            <?php 
            if ($sp) break;
 }
            ?>
             <div>
                <div id="customerForm">
                <h2>Thông tin nhân viên</h2>
                <div>
                        <span class="label">Họ và tên: </span> <?php echo $item['sur_name'];echo " "; echo $item['last_name'] ?>
                    </div>
                    <div>
                        <span class="label">Số điện thoại:</span> <?php echo $item['phone_num']?>
                    </div>
                    <div>
                        <span class="label">Email:</span> <?php echo $item['email']?>
                    </div>
                    <div>
                        <span class="label">Ghi chú:</span> <?php echo $item['user_info']?>
                    </div>
                </div>
            </div>
            <h2>Danh sách sản phẩm</h2>
            <!-- Result display area (optional) -->
                <table id="productTable">
                    <thead>
                        <tr>
                            <th>Hình ảnh sản phẩm</th>
                            <th>Tên sản phẩm</th>
                            <th>Đơn giá</th>
                            <th>Số lượng</th>
                            <th>Thành tiền</th>
                        </tr>
                    </thead>
                    <?php   
                    while($item = mysqli_fetch_array($tmp)) { 
                        if ($item['order_ID']!=$orderId) {
            
                            continue;
                        } else {

                        }
                    ?>
                    <tbody id="productBody">
                        <td><img src=<?php echo $item['img_path'] ?> alt='Product Image'></td>
                        <td><?php echo $item['book_name'] ?></td>
                        <td><?php echo $item['purchase_price'] ?></td>
                        <td><?php echo $item['purchase_quantity'] ?></td>
                        <td><?php echo  $item['purchase_price'] * $item['purchase_quantity']; $small_sum+=$item['purchase_price'] * $item['purchase_quantity']?></td>
                        <!-- Product information will be added here -->
                    </tbody>
                    <?php } ?>  
                </table>
                <br>
                
                <br>
            <script>
                // Lấy giá trị orderId từ tham số truyền vào URL
                const urlParams = new URLSearchParams(window.location.search);
                const orderId = urlParams.get('orderId');

                // Thêm các thông tin khác tương ứng với orderId
                
                // Ví dụ: Hiển thị nút để quay lại trang trước
                document.write('<button onclick="goBack()">Go Back</button>');

                // Hàm để quay lại trang trước
                function goBack() {
                    window.history.back();
                }
            </script>

        </div>
    </div>
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
