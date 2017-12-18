<?php
    include 'connect.php';
    // session_start();
    $id = $_ ['m_ID'];
    
    $query = "SELECT * FROM menu where m_ID='$id'";

    $result=mysqli_query($conn,$query);
    
    header("location:menu.php?pesan=show");
?>