<?php
// Get user ID
session_start();
//check if user is logged in
if(!isset($_SESSION['user_id'])){
    $user_id = -1;
}
else{
    $con = require __DIR__ . "/database.php";
    
    $sql = "SELECT * FROM user
            WHERE ID = {$_SESSION["user_id"]}";
            
    $user = $con->query($sql)->fetch_assoc();
    $user_id = $user["ID"];
}

// Connect to your database
$con = mysqli_connect("localhost:3307","root","","dabm_database");

// Check connection
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  exit();
}

// Get the ID from the GET request, ID can be "1" or "D001"
$book_id = $_GET['id'];
//sanitize the id before using in the query
$book_id = mysqli_real_escape_string($con, $book_id);


//When click on the button "Thêm vào giỏ hàng", if the user is not logged in, redirect to login page
// else add the book to the cart_include table
if(isset($_POST['add_to_cart'])){
    if($user_id == -1){
        header('location:login.php');
    }
    else{
        // check if the user is a member or not
        $query = "SELECT * FROM member WHERE ID = '$user_id';";
        $result = mysqli_query($con,$query);
        if ($result->num_rows > 0) {
            $quantity = $_POST['quantity'];
            //check quantity, if quantity is less than 1, alert and set quantity to 1
            if($quantity < 1){
                echo "<script>alert('Số lượng không hợp lệ!');</script>";
                $quantity = 1;
                echo "<script>window.location.href='single_product.php?id=$book_id';</script>";
            }
            else{
                // Check if the book is already in the cart
                $query = "SELECT * FROM cart_include WHERE ID = '$user_id' AND book_ID = '$book_id';";
                $result = mysqli_query($con,$query);
                if ($result->num_rows > 0) {
                    // If the book is already in the cart, update the quantity
                    $query = "UPDATE cart_include SET cart_quantity = cart_quantity + '$quantity' WHERE ID = '$user_id' AND book_ID = '$book_id';";
                    $result = mysqli_query($con,$query);
                    // thông báo thêm vào giỏ hàng thành công
                    if ($result) {
                        echo "<script>alert('Thêm vào giỏ hàng thành công!');</script>";
                        echo "<script>window.location.href='single_product.php?id=$book_id';</script>";
                    } else {
                        echo "<script>alert('Thêm vào giỏ hàng thất bại!');</script>";
                        echo "<script>window.location.href='single_product.php?id=$book_id';</script>";
                    }
                } else {
                    // If the book is not in the cart, insert the book to the cart
                    $query = "INSERT INTO cart_include VALUES ('$user_id', '$book_id', '$quantity');";
                    $result = mysqli_query($con,$query);
                    if ($result) {
                        echo "<script>alert('Thêm vào giỏ hàng thành công!');</script>";
                        echo "<script>window.location.href='single_product.php?id=$book_id';</script>";
                    } else {
                        echo "<script>alert('Thêm vào giỏ hàng thất bại!');</script>";
                        echo "<script>window.location.href='single_product.php?id=$book_id';</script>";
                    }
                }
            }
        } else {
            echo "<script>alert('Bạn không có quyền thêm vào giỏ hàng!');</script>";
            echo "<script>window.location.href='single_product.php?id=$book_id';</script>";
        }
    }
}

if(isset($_POST['buy_now'])){
    if($user_id == -1){
        header('location:login.php');
    }
    else{
        // check if the user is a member or not
        $query = "SELECT * FROM member WHERE ID = '$user_id';";
        $result = mysqli_query($con,$query);
        if ($result->num_rows > 0) {
            $quantity = $_POST['quantity'];
            //check quantity, if quantity is less than 1, alert and set quantity to 1
            if($quantity < 1){
                echo "<script>alert('Số lượng không hợp lệ!');</script>";
                $quantity = 1;
                echo "<script>window.location.href='single_product.php?id=$book_id';</script>";
            }
            else{
                // Check if the book is already in the cart
                $query = "SELECT * FROM cart_include WHERE ID = '$user_id' AND book_ID = '$book_id';";
                $result = mysqli_query($con,$query);
                if ($result->num_rows > 0) {
                    // If the book is already in the cart, update the quantity
                    $query = "UPDATE cart_include SET cart_quantity = cart_quantity + '$quantity' WHERE ID = '$user_id' AND book_ID = '$book_id';";
                    $result = mysqli_query($con,$query);
                    // thông báo thêm vào giỏ hàng thành công
                    if ($result) {
                        echo "<script>window.location.href='customer_create_order.php?id=$book_id';</script>";
                    } else {
                        echo "<script>window.location.href='single_product.php?id=$book_id';</script>";
                    }
                } else {
                    // If the book is not in the cart, insert the book to the cart
                    $query = "INSERT INTO cart_include VALUES ('$user_id', '$book_id', '$quantity');";
                    $result = mysqli_query($con,$query);
                    if ($result) {
                        echo "<script>window.location.href='customer_create_order.php?id=$book_id';</script>";
                    } else {
                        echo "<script>window.location.href='single_product.php?id=$book_id';</script>";
                    }
                }
            }
        } else {
            echo "<script>alert('Bạn không có quyền mua ngay!');</script>";
            echo "<script>window.location.href='single_product.php?id=$book_id';</script>";
        }
    }
}

if (isset($_POST['submit_comment'])) {
    if($user_id == -1){
        header('location:login.php');
    }
    else{
        if (empty($_POST['comment'])) {
            echo "<script>alert('Vui lòng nhập bình luận!');</script>";
            echo "<script>window.location.href='single_product.php?id=$book_id';</script>";
        } else {
            $query = "SELECT * FROM member WHERE ID = '$user_id';";
            $result = mysqli_query($con,$query);
            if ($result->num_rows > 0) {
                $query = "SELECT * FROM comment WHERE ID = '$user_id' AND book_ID = '$book_id';";
                $result = mysqli_query($con,$query);
                if ($result->num_rows > 0) {
                    // update comment
                    $comment = $_POST['comment'];
                    $date = date("Y-m-d");
                    $query = "UPDATE comment SET content = '$comment', date = '$date' WHERE ID = '$user_id' AND book_ID = '$book_id';";
                    $result = mysqli_query($con,$query);
                    if ($result) {
                        echo "<script>alert('Gửi bình luận thành công!');</script>";
                        echo "<script>window.location.href='single_product.php?id=$book_id';</script>";
                    } else {
                        echo "<script>alert('Gửi bình luận thất bại!');</script>";
                        echo "<script>window.location.href='single_product.php?id=$book_id';</script>";
                    }
                } else {
                    $comment = $_POST['comment'];
                    $date = date("Y-m-d");
                    $query = "INSERT INTO comment VALUES ('$user_id', '$book_id', '$comment', '$date');";
                    $result = mysqli_query($con,$query);
                    if ($result) {
                        echo "<script>alert('Gửi bình luận thành công!');</script>";
                        echo "<script>window.location.href='single_product.php?id=$book_id';</script>";
                    } else {
                        echo "<script>alert('Gửi bình luận thất bại!');</script>";
                        echo "<script>window.location.href='single_product.php?id=$book_id';</script>";
                    }
                }
            } else {
                echo "<script>alert('Bạn không có quyền gửi bình luận!');</script>";
                echo "<script>window.location.href='single_product.php?id=$book_id';</script>";
            }
        }
    }
}

?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
	<title>My website</title>
    <link rel="stylesheet" href="css/single_product.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/cover-box.css">
</head>
<body>
    <!-- header -->
    <div class="header">
        <div class="header-left-section">
            <a href="index.html"><img class="header-logo" src="img/logo_DABM.png" alt="Logo"></a>
        </div>
        <div class="header-nav-links">
            <a href="login_success.php">Trang chủ</a>
            <a href="features_product_login.php">Cửa hàng</a>
            <a href="about_us_login.php">Giới thiệu</a>
            <a href="contact_login.php">Liên hệ</a>
        </div>
        <div class="header-right-section">
            <a href="user_member.php"><img class="header-icon" src="img/icon_user.png" alt="Icon 1"></a>
            <a href="#"><img class="header-icon" src="img/icon_news.png" alt="Icon 2"></a>
            <a href="#"><img class="header-icon" src="img/icon_heart.png" alt="Icon 3"></a>
            <a href="cart.php"><img class="header-icon" src="img/icon_cart.png" alt="Icon 3"></a>
            <?php
                if($user_id == -1){
                    echo "<button class='header-login-button' onclick='redirectToLoginPage()'>
                        Đăng nhập
                    </button>
                    <script>
                        function redirectToLoginPage() {
                        // Add code to redirect to the login page
                        window.location.href = 'login.php'; // Replace 'login.html' with the actual URL of your login page
                        }
                    </script>";
                } else {
                    echo "<button class='header-login-button' onclick='redirectToLogout()'>
                        Đăng xuất
                    </button>
                    <script>
                        function redirectToLogout() {
                        // Add code to redirect to the login page
                        window.location.href = 'logout.php'; // Replace 'login.html' with the actual URL of your login page
                        }
                    </script>";
                }
            ?>
        </div>
    </div>

    <!-- content goes here -->
    <div class="content">
        <?php
            $query = "SELECT book.book_name, author.author_name, publisher.publisher_name, book.publication_year, book.release_date, book.book_ID, genre.genre_name, book.page_count, book.sale_price, book.remaining_quantity, book.display_status, book.img_path
                        FROM book, author, publisher, genre, written_by, belongs_to
                        WHERE book.book_ID = written_by.book_ID AND written_by.author_ID = author.author_ID AND book.publisher_ID = publisher.publisher_ID AND book.book_ID = belongs_to.book_ID AND belongs_to.genre_ID = genre.genre_ID AND book.book_ID = '$book_id';";
            $result = mysqli_query($con,$query);
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo "<img class='large-image' src='" . $row["img_path"]. "' alt='Book image'>";
                }
            } else {
                echo "0 results";
            }
        ?>
        <main>
            <?php
                $query = "SELECT book.book_name, author.author_name, publisher.publisher_name, book.publication_year, book.release_date, book.book_ID, genre.genre_name, book.page_count, book.sale_price, book.remaining_quantity, book.display_status, book.img_path
                            FROM book, author, publisher, genre, written_by, belongs_to
                            WHERE book.book_ID = written_by.book_ID AND written_by.author_ID = author.author_ID AND book.publisher_ID = publisher.publisher_ID AND book.book_ID = belongs_to.book_ID AND belongs_to.genre_ID = genre.genre_ID AND book.book_ID = '$book_id';";
                $result = mysqli_query($con,$query);
                if ($result->num_rows > 0) {
                    while($row = $result->fetch_assoc()) {
                        echo "<h1>" . $row["book_name"]. "</h1>";
                        echo "<p>Tác giả: " . $row["author_name"]. "</p>";
                        echo "<p>Nhà xuất bản: " . $row["publisher_name"]. "</p>";
                        echo "<p>Năm xuất bản: " . $row["publication_year"]. "</p>";
                        echo "<p>Năm phát hành: " . $row["release_date"]. "</p>";
                        echo "<p>Mã sách: " . $row["book_ID"]. "</p>";
                        echo "<p>Thể loại: " . $row["genre_name"]. "</p>";
                        echo "<p>Số trang: " . $row["page_count"]. "</p><br>";
                        echo "<p class='price'>" . $row["sale_price"]. " VND</p><br>";
                        echo "<div class='quantity-group'>";
                        echo "<input type='number' id='quantity' name='quantity' value='1' min='1' max='" . $row["remaining_quantity"]. "' oninput='updateQuantity()'>";
                        echo "<span class='stock'>Kho: " . $row["remaining_quantity"]. "</span>";
                        echo "</div><br>";
                    }
                } else {
                    echo "0 results";
                }
            ?>
            <form method="POST">
                <input type="hidden" name="quantity" id="hiddenQuantity" value="1">
                <button type="submit" name="add_to_cart">Thêm vào giỏ hàng</button>
                <button type="submit" name="buy_now">Mua ngay</button>
            </form>
            
            <script>
                function updateQuantity() {
                    var quantity = document.getElementById('quantity').value;
                    document.getElementById('hiddenQuantity').value = quantity;
                }
            </script>
        </main>
    </div>
    <div class="comment">
        <div class="comment-container">
            <div class="comment-title">Đánh giá sản phẩm</div>
            <div class="comment-list">
                <?php
                    // select all from comment table where book_id = $book_id
                    $query = "SELECT user.sur_name, user.last_name, comment.content, comment.date
                                FROM user, comment
                                WHERE user.ID = comment.ID AND comment.book_ID = '$book_id';";
                    $result = mysqli_query($con,$query);
                    if ($result->num_rows > 0) {
                        while($row = $result->fetch_assoc()) {
                            echo "<div class='review'>";
                            echo "<div class='reviewer-name'>" . $row["sur_name"]. " " . $row["last_name"]. "</div>";
                            echo "<div class='review-time'>" . $row["date"]. "</div>";
                            echo "<p class='review-text'>" . $row["content"]. "</p>";
                            echo "</div>";
                        }
                    } else {
                        echo "<div class='review' style='border: none;>'";
                        echo "<p class='review-text'>" . "Chưa có bình luận nào về sản phẩm này." . "</p>";
                        echo "</div>";
                    }
                ?>
            </div>
        </div>
        <form method="POST">
            <div class="add-comment">
                <input type="text" name="comment" id="comment" placeholder="Nhập bình luận của bạn">
                <button type="submit" name="submit_comment">Gửi</button>
            </div>
        </form>
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