<?php
include_once("../connection.php");
$memberID = $_GET['id'];

//check if the memberID is currently in sale_order table and if order_info (inside order table) contains string "Đang chờ duyệt"
// $query = "SELECT *
//           FROM sale_order, order
//           WHERE sale_order.order_ID = order.order_ID AND sale_order.member_ID = $memberID AND order.order_info LIKE '%Đang chờ duyệt%';";
$query = "SELECT *
          FROM sale_order, `order`
          WHERE sale_order.sale_ID = `order`.order_ID AND sale_order.member_ID = $memberID AND `order`.order_info LIKE '%Đang chờ duyệt%';";
$result = mysqli_query($con, $query);

if (mysqli_num_rows($result) > 0) {
    echo "<script>
            var confirmation = confirm('THÀNH VIÊN CÒN " . mysqli_num_rows($result) . " ĐƠN HÀNG ĐANG XỬ LÝ. KHÔNG THỂ XÓA!');
            if (confirmation) {
                window.location.href = '../manager_member.php';
            } else {
                window.location.href = '../manager_member.php';
            }
          </script>";
    return;
}
else {
    echo "<script>
            var confirmation = confirm('XÁC NHẬN XÓA THÀNH VIÊN?');
            if (confirmation) {
                window.location.href = 'delete_member_data_from_ID.php?id={$memberID}';
            } else {
                window.location.href = '../manager_member.php';
            }
        </script>";
    return;
}


// echo "<script>
//     var confirmation = confirm('XÁC NHẬN XÓA NHÂN VIÊN?');
//     if (confirmation) {
//         window.location.href = 'delete_member_data_from_ID.php?id={$id}';
//     } else {
//         window.location.href = '../manager_member.php';
//     }
// </script>";

?>
