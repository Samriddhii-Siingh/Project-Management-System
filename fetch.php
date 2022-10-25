<?php 
include("connection.php");
?>

<?php 
    $query = "select name from teacher";
    $result = mysqli_query($conn, $query);
    if($result && mysqli_num_rows($result) > 0)
    {
        $options = mysqli_fetch_array($result);
    }
?>