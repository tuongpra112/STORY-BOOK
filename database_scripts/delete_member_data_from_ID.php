<?php
// Connect to your database
// $con = mysqli_connect("localhost:3307","root","","doan");
include_once("../connection.php");

// Check connection
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  exit();
}

$id = $_GET['id'];
$id = mysqli_real_escape_string($con, $id);

//set member_ID in sale_order table to another random member_ID in the member table
$query = "UPDATE sale_order SET member_ID = 00000000 WHERE member_ID = '{$id}'";
$result1 = mysqli_query($con, $query);

// delete member_ID from cart table
$query = "DELETE FROM cart WHERE ID = '{$id}'";
$result2 = mysqli_query($con, $query);

// //delete the member from the database
// $query = "DELETE FROM member WHERE id = '{$id}'";
// $result = mysqli_query($con, $query);

// //delete the user from the database
// $query = "DELETE FROM user WHERE id = '{$id}'";
// $result = mysqli_query($con, $query);

// if ($result) {
//     echo "<script>alert('Xóa thành công!')</script>";
//     echo "<script>window.location.href = '../manager_member.php';</script>";
// } else {
//     echo "<script>alert('Xóa thất bại!')</script>";
//     echo "<script>window.location.href = '../manager_member.php';</script>";
// }

if ($result1 && $result2) {
    //delete the member from the database
    $query = "DELETE FROM member WHERE ID = '{$id}'";
    $result = mysqli_query($con, $query);

    //delete the user from the database
    $query = "DELETE FROM user WHERE ID = '{$id}'";
    $result = mysqli_query($con, $query);

    if ($result) {
        echo "<script>alert('Xóa thành công!')</script>";
        echo "<script>window.location.href = '../manager_member.php';</script>";
    } else {
        echo "<script>alert('Xóa thất bại!')</script>";
        echo "<script>window.location.href = '../manager_member.php';</script>";
    }
} else {
    echo "<script>alert('Xóa thất bại!')</script>";
    echo "<script>window.location.href = '../manager_member.php';</script>";
};
?>