<?php 
include("connection.php");
include("fetch.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <select name="name" id="">
        <option value="1">Select</option>
        <?php 
        foreach($options as $option)
        {
            ?>
            <option><?php echo $option['name']; ?></option>
        <?php
        }
        ?>
    </select>
</body>
</html>