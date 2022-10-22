<?php

session_start();

    if(isset($_SESSION['t_id']))
    {
        unset($_SESSION['t_id']);
    }
    elseif(isset($_SESSION['s_id']))
    {
        unset($_SESSION['s_id']);
    }

    header("Location: login.php");
    die;

?>