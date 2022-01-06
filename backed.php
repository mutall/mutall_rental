<?php

<?php
//include_once './meters.php';
require_once "../../mutall_devs/metavisuo/sql_library.php";
//
//$emeter = new meters();
$agreement_ids= new \sql\identifier('agreement','mutallco_rental')
//
?>
<html>   
    <body>
        <?php  
        echo $agreement_ids->to_str(); 
        ?>
    </body>
</html>
