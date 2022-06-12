<?php

require_once 'include/dbConnect.php';
require_once 'include/functions.php';

if (isset($_POST['insert'])){

    $tid = $_POST["tid_insert"];
    $cid = $_POST["cid_insert"];
    $rid = $_POST["rid_insert"];
    $pid = $_POST["pid_insert"];

    
    
    insert_table($conn,$tid, $cid, $rid, $pid );
  
}

if (isset($_POST['insert2'])){

    $id = $_POST["id"];
    $sub = $_POST["sub"];
    $tax = $_POST["taxx"];
    $tot = $_POST["tot"];
    $method = $_POST["method"];

    
    
    insert_receipt($conn,$id, $sub, $tax, $tot , $method);
  
}

if (isset($_POST['avg'])){

    
    $result =  get_avg_alcohol($conn);
    ?> <table border='1'>

    <tr>

    <th>Average Spending</th>

    <th>Customer ID</th>


    </tr>

    <?php
    foreach($result as $row){
       

        echo "<tr>";

        echo "<td>" . $row['tot'] . "</td>";
        echo "<td>" . $row['cid'] . "</td>";

        echo "</tr>";
    }

    echo "</table>";
}




if (isset($_POST['most'])){

    
    $result =  most_expensive($conn);
    ?> <table border='1'>

    <tr>

    <th>Price</th>

    <th>Name</th>
    <th>Times Ordered</th>

    </tr>

    <?php
    foreach($result as $row){
       

        echo "<tr>";

        echo "<td>" . $row['price'] . "</td>";
        echo "<td>" . $row['name'] . "</td>";
        echo "<td>" . $row['timesOrdered'] . "</td>";

        echo "</tr>";
    }

    echo "</table>";
}

if (isset($_POST['tax'])){

    
    $result =  tax_total($conn);
    ?> <table border='1'>

    <tr>

    <th>Total Paid</th>

    <th>Total Tax</th>
    <th>Method</th>

    </tr>

    <?php
    foreach($result as $row){
       

        echo "<tr>";

        echo "<td>" . $row['totalPaid'] . "</td>";
        echo "<td>" . $row['totalTaxPaid'] . "</td>";
        echo "<td>" . $row['payment_method'] . "</td>";

        echo "</tr>";
    }

    echo "</table>";
}

if (isset($_POST['high'])){

    
    $result =  rich_customers($conn);
    ?> <table border='1'>

    <tr>
    <th>Name </th>
    <th>Total Paid</th>



    </tr>

    <?php
    foreach($result as $row){
       

        echo "<tr>";

        echo "<td>" . $row['name'] . "</td>";
        echo "<td>" . $row['totalPaid'] . "</td>";

        echo "</tr>";
    }

    echo "</table>";
}

if (isset($_POST['money'])){

    
    $result =  project_price($conn);
    ?> <table border='1'>

    <tr>
    <th>Total Paid (Before Tax) </th>
    <th>Total Paid After Increase</th>
    <th>Product Name </th>
    <th>Menu Price</th>
    <th>Menu Price After Increase</th>

    </tr>

    <?php
    foreach($result as $row){
       

        echo "<tr>";

        echo "<td>" . $row['sub_total'] . "</td>";
        echo "<td>" . $row['projectedTotal'] . "</td>";
        echo "<td>" . $row['pname'] . "</td>";
        echo "<td>" . $row['price'] . "</td>";
        echo "<td>" . $row['projectedPrice'] . "</td>";

        echo "</tr>";
    }

    echo "</table>";
}
