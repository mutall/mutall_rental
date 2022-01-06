<?php
include_once './meters.php';

//
$emeter = new meters();
//
?>
<html>   
    <body>
        <?php  $emeter->all_meters()   ?>
    </body>
</html>
