<?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // $con = mysqli_connect("localhost:3307", "root", "", "dabm_database");
        include_once("../connection.php");
        // Get the phone number from the POST data
        
        $data = json_decode(file_get_contents("php://input"));
        $bookID = $data->bookID;

        // Query the database for user information based on the phone number
        $query = "SELECT * FROM book WHERE book_ID = '$bookID'";
        
        $result = mysqli_query($con, $query);

        if ($result) {
            // Fetch the data as an associative array
            $userData = mysqli_fetch_assoc($result);
            http_response_code(200);
            $response = [
                'success' => true,
                'message' => 'Hello world',
                'bookData' => $userData,
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