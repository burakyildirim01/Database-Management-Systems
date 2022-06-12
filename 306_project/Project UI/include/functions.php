<?php



function insert_table($conn,$tid, $cid, $rid, $pid ){


    $sql = "INSERT INTO tables VALUES('$tid', '$cid', '$rid', '$pid');";
    if ($conn->query($sql) === TRUE) { 
        echo "<br>Record updated successfully<br>";
    } else {
        echo "<br>Error updating record: " . $conn->error . "<br>";
    }
}

function insert_receipt($conn,$id, $sub, $tax, $tot , $method){


    $sql = "INSERT INTO receipt VALUES('$id', '$sub', '$tax', '$tot', '$method');";
    if ($conn->query($sql) === TRUE) { 
        echo "<br>Record updated successfully<br>";
    } else {
        echo "<br>Error updating record: " . $conn->error . "<br>";
    }
}

function get_avg_alcohol($conn){

    $result = mysqli_query($conn, "SELECT avg(total) as tot, customer.customer_id as cid
    From customer, product
    Natural Join tables
    Natural Join receipt
    Where product_id = id AND customer.customer_id = tables.customer_id and id in (
        Select id
        From alcholic_beverages
        )
    Group By customer.customer_id
    Having count(*) > 0;");
    return $result;
}

function most_expensive($conn){
    $result = mysqli_query($conn,  "select price, name , Count(*) as timesOrdered
    from tables, product
    where id in (
        Select id
        from product
        where price >= (
            Select max(price)
            From product))
        and product_id = id;");
        return $result;
}

function tax_total($conn){
    $result = mysqli_query($conn, "Select sum(total) as totalPaid,  sum((((tax / 100 ) + 1) * total) - total) as totalTaxPaid, payment_method
    From receipt
    group by payment_method;");
    return $result;
}

function rich_customers($conn){
    $result = mysqli_query($conn, "Select name, sum(total) as totalPaid
    From customer
    Natural Join tables
    Natural Join receipt
    Where customer_id in ( 
        Select customer_id
        from tables
        Natural join receipt
        group by customer_id
        having sum(total) > 100)
    group by customer_id;");
    return $result;
}

function project_price($conn){
    $result = mysqli_query($conn, "Select sub_total , (sub_total * (1 +(count(*)/ 20))) as projectedTotal, product.name as pname, price,  price * (1 + (count(*)/ 20) )as projectedPrice
    From tables, product, receipt
    where id = product_id and tables.receipt_id = receipt.receipt_id
    group by id
    having count(*) > 0;");
    return $result;
}