<?php

//
//Include the mutall library
require_once "../../mutall_devs/metavisuo/library.php";
include_once '../../mutall_devs/metavisuo/config.php';

//The meters xtends the database
class meters extends database {
    
    //
    //Construct the meters
    function __construct() {
        
        parent:: __construct('mutallco_rental');
        $this->year = date('Y');
        $this->month = date('M');
        
    }
    //
    function chk($sql){
        $this->query($sql);
        return $sql;
    }
    //
    //The n'th cutoff date. When n=0, its the cutoff of the current period; n=1
    //that of the next period; n=2 that of the next period, etc.; n=-1 that
    //of the previous period, etc.
    function cutoff($n=0){
        //
        //Let $dayn be the first day of the n'th period
        //
        //Let $day0 be the first day of the current period.
        $day0 = "$this->year-$this->month-01";
        //
        //Get the sign of the requested period
        $sign = $n<0 ? "-": "+";
        //
        //Formulate string expression of $dayn, e.g. '2019-02-3 + 4 month'
        $dayn = $day0." ".$sign." ".abs($n)." month"; 
        //
        //Convert the english string expresion to a Unix time value
        $time = strtotime($dayn);
        //
        //Format the time, to get the last day of $dayn
        $cutoff = date('Y-m-t', $time);
        //
        return $cutoff;
    }
    //Meters assigned a room
    function connected_meters(){
        //
        //From the sql to get the electricity meters.
        return $this->chk("
            Select 
                econnection.emeter,
                econnection.end_date,
                group_concat(room.uid) as rooms
            From
                econnection
                INNER JOIN room ON econnection.room = room.room 
            Where
                econnection.end_date >CURRENT_DATE
            GROUP BY 
                econnection.emeter 
        ");
        
    }
    
    
    function paid_meters(){
        $current_date= date("Y-m-d");
        return $this->chk("
            Select 
                econnection.emeter, 
                econnection.end_date,
                group_concat(distinct client.name) as clients
            From
                econnection
                INNER JOIN room ON econnection.room = room.room 
                inner join agreement on agreement.room = room.room
                inner join client on agreement.client = client.client
            Where
                agreement.terminated IS NULL
            AND
                econnection.end_date >CURRENT_DATE
            GROUP BY 
                econnection.emeter
            
        ");
        
    }
    
    function linked_emeters(){
        //
        return $this->chk("
            Select 
                elink.eaccount, 
                count(elink.emeter) as meters
            From
                elink
                
            GROUP BY 
                elink.eaccount 
        ");
        
    }
    
    
    //Eemeters in th system
    function all_emeters(){
        //
        return $this->chk("
            Select
                emeter.emeter,
                eaccount.eaccount as num,
                emeter.num as meters,
                eaccount.num as eaccount,
                cmeters.rooms,
                pmeters.clients
            From
                emeter
                left join ({$this->connected_meters()}) as cmeters on cmeters.emeter=emeter.emeter
                left join ({$this->paid_meters()}) as pmeters on pmeters.emeter=emeter.emeter
                inner join elink on elink.emeter=emeter.emeter
                inner join eaccount on elink.eaccount=eaccount.eaccount
        ");
        
    }
    
    
    //Get the connected accounts
    function connected_eaacounts(){
        //
        return $this->chk("
            Select
                elink.eaccount,
                econnection.end_date,
                group_concat(room.uid) as rooms
            From 
                elink
                inner join emeter on elink.emeter =emeter.emeter
                left join econnection on econnection.emeter=emeter.emeter
                left join room ON econnection.room = room.room
            Where
                econnection.end_date>CURRENT_DATE
            Group BY
                elink.eaccount
                
            ");
    }
    
    //
    //Get the paid accounts
    function paid_eaccounts(){
        //
        return $this->chk("
            Select
                elink.eaccount,
                econnection.end_date,
                group_concat(distinct client.name) as clients
            From
                elink
                inner join emeter on elink.emeter =emeter.emeter
                left join econnection on econnection.emeter=emeter.emeter
                left join room ON econnection.room = room.room
                left join agreement on agreement.room = room.room
                left join client on agreement.client = client.client
            Where
                econnection.end_date>CURRENT_DATE
            Group BY
                elink.eaccount
            ");
    }
    
    //All eaccounts
    function all_eaccounts(){
        //
        return $this->chk("
            Select
                eaccount.eaccount,
                eaccount.num as account,
                emeter.num as meters,
                caccount.rooms as room,
                paccount.clients as client,
                ebill.ebill
            From
                eaccount
                left join ({$this->connected_eaacounts()}) as caccount on caccount.eaccount=eaccount.eaccount
                left join ({$this->paid_eaccounts()}) as paccount on paccount.eaccount=eaccount.eaccount
                left join elink on elink.eaccount=eaccount.eaccount
                left join emeter on elink.emeter=emeter.emeter
                left join ebill on ebill.eaccount=eaccount.eaccount
                
            ");
    }
    
    //Get all the latest ebills with the max date
    function latest_bills(){
        //
        return $this->chk("
            Select
                ebill.ebill as bill,
                ebill.eaccount as eaccount,
                ebill.due_date as due_date,
                ebill.current_amount as amount,
                max(due_date) as date
            From
                ebill
            Group BY
                ebill.eaccount
            
            ");
    }
    
    //
    //model the monthly bills
    function monthly_bills(){
        //
        return $this->chk("
            Select
                all_eaccount.meters as Meter_num,
                all_eaccount.account as Eaccount,
                all_eaccount.room as Rooms,
                all_eaccount.client as Clients,
                all_bills.due_date as Date,
                all_bills.amount as Amount
            From
                ebill
                left join ({$this->latest_bills()}) as all_bills on all_bills.bill=ebill.ebill
                left join ({$this->all_eaccounts()}) as all_eaccount on all_eaccount.ebill=ebill.ebill
            ");
    }
    
    //Eemeters in the sysrem
    function show($sql){
        //
        $array = $this->get_sql_data($sql);
        //
        //get the header and the body content
        $headers = array_keys($array[0]);
        //
        //Output as a table
        echo "<table border=1>";
        //
       
        foreach ($headers as $cname) {
            echo "<th>$cname</th>";
        }
        echo "<tbody>";
        //
        //Loop through the array and display the results in a table 
        foreach ($array as $row) {
            //
            echo "<tr>";
            //
            //Step through the columns
            foreach($row as $cname=>$value){
                
                echo "<td>$value</td>";
                
            }
            echo "</tr>";
        }
        echo "</tbody>";
        echo "</table>";
    }
}
//

//
?>
<html>   
    <body>
        <?php 
        $emeter = new meters();
        $emeter->show($emeter->all_emeters())   
         ?>
    </body>
</html>



    