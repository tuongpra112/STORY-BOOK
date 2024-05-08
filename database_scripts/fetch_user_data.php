<?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // $con = mysqli_connect("localhost:3307", "root", "", "dabm_database");
        include_once("../connection.php");
        // Get the phone number from the POST data
        
        $data = json_decode(file_get_contents("php://input"));
        $phoneNumber = $data->phoneNum;

        // Query the database for user information based on the phone number
        // $query = "SELECT sur_name, last_name, email, ID FROM user WHERE phone_num = '$phoneNumber'";
        $query = "SELECT user.sur_name, user.last_name, user.last_name, user.email, user.ID
                  FROM user INNER JOIN member ON user.ID = member.ID
                  WHERE user.phone_num = '$phoneNumber'";
        $result = mysqli_query($con, $query);

        if ($result) {
            // Fetch the data as an associative array
            $userData = mysqli_fetch_assoc($result);
            http_response_code(200);
            $response = [
                'success' => true,
                'message' => 'Hello world',
                'userData' => $userData,
            ];
            echo json_encode($response);
            // Return the user data as a JSON response
        } else {
            echo "Error executing query: " . mysqli_error($con);
        }

        //Close the database connection
        mysqli_close($con);
    }
?>
