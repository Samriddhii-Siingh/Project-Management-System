<?php

function check_login($conn)
{
    if(isset($_SESSION['t_id']))
    {
        $id = $_SESSION['t_id'];
        $query = "select * from teacher where t_id = '$id' limit 1";

        $result = mysqli_query($conn, $query);
        if($result && mysqli_num_rows($result) > 0) 
        {
            $user_data = mysqli_fetch_assoc($result);
            return $user_data;
        }
    }

    elseif(isset($_SESSION['s_id']))
    {
        $id = $_SESSION['s_id'];
        $query = "select * from student where s_id = '$id' limit 1";

        $result = mysqli_query($conn, $query);
        if($result && mysqli_num_rows($result) > 0) 
        {
            $user_data = mysqli_fetch_assoc($result);
            return $user_data;
        }
    }

    //redirect to login
    header("Location: login.php");
    die;
}

?>