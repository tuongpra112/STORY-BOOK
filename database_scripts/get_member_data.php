<?php
// Connect to your database
// $con = mysqli_connect("localhost:3307","root","","doan");
include_once("../connection.php");

// Check connection
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  exit();
}

$search = $_POST['search'];
$search = str_replace(' ', '', $search);
$search = str_replace('(', '', $search);
$search = str_replace(')', '', $search);
$search = str_replace(';', '', $search);
$search = strtolower($search);

// SELECT CONCAT(user.sur_name, ' ', user.last_name) AS 'Member Name', member.ID
// FROM user, member
// WHERE user.ID = employee.ID AND user.ID != 00000000


$sql = "SELECT CONCAT(user.sur_name, ' ', user.last_name) AS 'Member Name', member.ID, user.phone_num, user.email
        FROM user, member
        WHERE user.ID = member.ID AND user.ID != 00000000
        AND REPLACE(LOWER(CONCAT(user.sur_name, ' ', user.last_name)), ' ', '') LIKE '%{$search}%'
        ORDER BY member.ID ASC;";
$result = mysqli_query($con, $sql);

//if not found any result search by ID
if (mysqli_num_rows($result) <= 0) {
    $sql = "SELECT CONCAT(user.sur_name, ' ', user.last_name) AS 'Member Name', member.ID, user.phone_num, user.email
            FROM user, member 
            WHERE user.ID = member.ID AND user.ID != 00000000
            AND REPLACE(LOWER(member.ID), ' ', '') LIKE '%{$search}%'
            ORDER BY member.ID ASC;";
    $result = mysqli_query($con, $sql);
}

if (mysqli_num_rows($result) > 0) {
    echo "<table>
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên Thành viên</th>
                    <th>ID</th>
                    <th>SDT</th>
                    <th>Email</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>";
    $i = 1;
    while ($row = mysqli_fetch_assoc($result)) {
        echo "<tr onclick=\"redirectToDetailsPage('".$row['ID']."')\">
                <td>".$i."</td>
                <td>".$row['Member Name']."</td>
                <td>".$row['ID']."</td>
                <td>".$row['phone_num']."</td>
                <td>".$row['email']."</td>
                <td><a href=\"database_scripts/confirmation_3.php?id={$row['ID']}\">Xóa</a></td>
            </tr>";
        $i++;
    }
    echo "</tbody>";
    echo "</table>";
} else {
    echo "No results found";
}

mysqli_close($con);
?>