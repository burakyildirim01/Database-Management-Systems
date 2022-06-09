<?php

require_once 'include/dbConnect.php';
require_once 'include/functions_quiz.php';

if (isset($_POST['insert'])){

    $cid = $_POST["cid_insert"];
    $name = $_POST["name_insert"];
    $country_code = $_POST["country_code_insert"];
    $district = $_POST["district_insert"];
    $population = $_POST["population_insert"];

    if(check_cid($cid) !== true){
        exit("Wrong cid value");
    }

    if(check_name($name) !== true){
        exit("Wrong name");
    }

    if(check_country_code($conn,$country_code) !== true){
        exit("Wrong country code");
    }

    if(check_district($district) !== true){
        exit("Wrong district");
    }

    if(check_population($population) !== true){
        exit("Wrong population");
    }

    $result = get_city_info($conn,$cid);
    echo "Returned rows are: " . mysqli_num_rows($result);
    print_table('city', $result);
    mysqli_free_result($result);
    insert_city($conn,$cid, $name, $country_code, $district, $population);
    $result = get_city_info($conn,$cid);
    echo "Returned rows are: " . mysqli_num_rows($result);
    print_table('city', $result);
    mysqli_free_result($result);
}


if (isset($_POST['remove'])){

    $cid = $_POST["cid_remove"];

    if(check_cid($cid) !== true){
        exit("Wrong cid value");
    }
    $result = get_city_info($conn,$cid);
    echo "Returned rows are: " . mysqli_num_rows($result);
    print_table('city', $result);
    mysqli_free_result($result);
    remove_city($conn,$cid);
    $result = get_city_info($conn,$cid);
    echo "Returned rows are: " . mysqli_num_rows($result);
    print_table('city', $result);
    mysqli_free_result($result);
}


if (isset($_POST['manipulate'])){

    $cid = $_POST["cid_manipulate"];
    $name = $_POST["name_insert"];

    if(check_cid($cid) !== true){
        exit("Wrong cid value");
    }
    get_city_info($conn,$cid);
    manipulate_city($conn,$cid,$name);
    get_city_info($conn,$cid);
}

if (isset($_POST['diff_lang'])){

    $country1 = $_POST['first_country'];
    $country2 = $_POST['second_country'];

    $result = diff_lang($conn,$country1,$country2);

    ?><br>

    <table border='1'>

    <tr>

    <th>Languages</th>

    </tr>

    <?php


    foreach($result as $row){

        echo "<tr>";

        echo "<td>" . $row['lang'] . "</td>";

        echo "</tr>";
    }

    echo "</table>";

    mysqli_free_result($result);

}

if (isset($_POST['diff_lang_join'])){

    $country1 = $_POST['first_country'];
    $country2 = $_POST['second_country'];

    $result = diff_lang_join($conn,$country1,$country2);

    ?><br>

    <table border='1'>

    <tr>

    <th>Languages</th>

    </tr>

    <?php


    foreach($result as $row){

        echo "<tr>";

        echo "<td>" . $row['lang'] . "</td>";

        echo "</tr>";
    }

    echo "</table>";

    mysqli_free_result($result);

}

if (isset($_POST['get_life'])){

    $country_name = $_POST['country_life'];
    $agg_type = $_POST['operations'];

    $result = aggregate_countries($conn,$agg_type,$country_name);

    ?><br>

    <table border='1'>

    <tr>

    <th>Name</th>
    <th>LifeExpectancy</th>
    <th>GovernmentForm</th>
    <th>Language</th>

    </tr>

    <?php


    foreach($result as $row){

        echo "<tr>";

        echo "<td>" . $row['name'] . "</td>";
        echo "<td>" . $row['le'] . "</td>";
        echo "<td>" . $row['gf'] . "</td>";
        echo "<td>" . $row['l'] . "</td>";

        echo "</tr>";
    }

    echo "</table>";

    mysqli_free_result($result);

}

if (isset($_POST['get_min_max_continent'])){

    $result = find_min_max_continent($conn);

    ?><br>

    <table border='1'>

    <tr>

    <th>Name</th>
    <th>Continent</th>
    <th>LifeExpectancy</th>

    </tr>

    <?php


    foreach($result as $row){

        echo "<tr>";

        echo "<td>" . $row['name'] . "</td>";
        echo "<td>" . $row['ct'] . "</td>";
        echo "<td>" . $row['le'] . "</td>";

        echo "</tr>";
    }

    echo "</table>";

    mysqli_free_result($result);

}

if (isset($_POST['get_country_language'])){

    $language = $_POST['ct_language'];
    $percentage = $_POST['ct_percentage'];

    $result = find_country_language($conn, $percentage, $language);

    ?><br>

    <table border='1'>

    <tr>

    <th>Name</th>
    <th>Language</th>
    <th>Percentage</th>

    </tr>

    <?php


    foreach($result as $row){

        echo "<tr>";

        echo "<td>" . $row['name'] . "</td>";
        echo "<td>" . $row['l'] . "</td>";
        echo "<td>" . $row['p'] . "</td>";

        echo "</tr>";
    }

    echo "</table>";

    mysqli_free_result($result);

}

if (isset($_POST['get_country_count'])){

    $amount = $_POST['ct_amount'];

    $result = find_country_count($conn, $amount);

    ?><br>

    <table border='1'>

    <tr>

    <th>Name</th>
    <th>MAX(LifeExpectancy)</th>
    <th>Continent</th>

    </tr>

    <?php


    foreach($result as $row){

        echo "<tr>";

        echo "<td>" . $row['name'] . "</td>";
        echo "<td>" . $row['le'] . "</td>";
        echo "<td>" . $row['ct'] . "</td>";

        echo "</tr>";
    }

    echo "</table>";

    mysqli_free_result($result);

}
