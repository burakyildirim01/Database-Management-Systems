<?php

/*
COMP306-DATABASE MANAGEMENT SYSTEMS


More information about the parameters can be found: 
https://www.php.net/manual/en/mysqli.construct.php
*/

$host = 'localhost';
$username = 'root';
$passwd = ''; #This operation is not secure
$dbName = 'restaurant';

$conn = mysqli_connect($host, $username, $passwd, $dbName, 3306);
if(!$conn){
    die('Connection failed: '.mysqli_connect_error());
}

#Note that we did not close the php tag.