<?php
 
 include('connect.php');

 $n1 = $_POST['name'];
 $e1 = $_POST['email'];
 $p1 = $_POST['pass'];

 if($n1=="" && $e1=="" && $p1=="")
 {
    echo "Please Fill All The Fields";
 }
 else
 {
    $query = "insert into users(name,email,pass) values('$n1','$e1','$p1')";
    mysqli_query($con,$query);
   
 }


?>