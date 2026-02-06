<?php
    include 'connect.php';
    $sql = "SELECT * FROM users";
    $req = mysqli_query($con, $sql);
    $response = array();
    while($row=mysqli_fetch_array($req))
    {
        $value["id"] = $row["id"];
        $value["name"] = $row["name"];
        $value["email"] = $row["email"];
         $value["pass"] = $row["pass"];
        array_push($response, $value);
    }
    
    echo json_encode($response);

?>