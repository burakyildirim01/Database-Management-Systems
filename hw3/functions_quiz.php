<?php


function check_cid($cid){
    return is_numeric($cid);
}

function check_name($name){
    return ctype_alpha($name) and (strlen($name) < 35);
}

function check_country_code($conn,$country_code){
    return is_contains($conn,$country_code, "CountryCode", "city") and ctype_alpha($country_code) and (strlen($str) < 3);
}

function check_district($district){
    return ctype_alpha($district) and (strlen($district) < 20);
}

function check_population($population){
    return is_numeric($population);
}

function check_country($conn, $country){
    ########
    #Please enter your code here

    ########
    return is_contains($conn,$country, "Name", "country");
}

function get_city_info($conn,$cid){

    if ($result = mysqli_query($conn, "SELECT * FROM city WHERE ID=" . $cid )) {
        return $result;
    }
}

function is_contains($conn,$string, $needle, $table_name){

    $is_contains = False;

    ########
    #Please enter your code here

    ########
    if ($result = mysqli_query($conn, "SELECT COUNT(*)>0 AS containBool FROM ".$table_name." WHERE ".$needle."=" . "\"" . $string . "\"" . "")) {
      $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
      if($row['containBool']=='1'){
        $is_contains = True;
      }
    }
    return $is_contains;
}

function diff_lang($conn, $country1, $country2){
    $result = Null;
    ########
    #Please enter your code here

    ########
    #echo $is_contains($conn, $country1);
    if(check_country($conn, $country1)==False or check_country($conn, $country2)==False){
      exit("Country names aren't valid");
    }
    if($result = mysqli_query($conn, "SELECT Cl.Language AS lang FROM country C, countrylanguage Cl WHERE C.Name = " . "\"" . $country1 . "\"" . " AND C.Code=Cl.CountryCode AND Cl.Language NOT IN( SELECT Cl2.Language FROM country C2, countrylanguage Cl2 WHERE C2.Name = " . "\"" . $country2 . "\"" . " AND C2.Code=Cl2.CountryCode)")){
      return $result;
    }

    return $result;
}

function diff_lang_join($conn, $country1, $country2){

    $result = Null;
    ########
    #Please enter your code here

    ########
    if(check_country($conn, $country1)==False or check_country($conn, $country2)==False){
      exit("Country names aren't valid");
    }
    if($result = mysqli_query($conn, "SELECT Cl.Language AS lang
FROM countrylanguage Cl
   LEFT JOIN
   country C1
   ON C1.Code=Cl.CountryCode
   LEFT JOIN
   country C2
   ON C2.Code=Cl.CountryCode
   WHERE C1.Name=" . "\"" . $country1 . "\"" . " AND C2.Name!=" . "\"" . $country2 . "\"" . "")){
      return $result;
    }
    return $result;
}

function aggregate_countries($conn,$agg_type, $country_name){

    $result = Null;
    ########
    #Please enter your code here

    ########
    if(check_country($conn, $country_name)==False){
      exit("Country names aren't valid");
    }

    if($result = mysqli_query($conn, "SELECT C.Name AS name, C.LifeExpectancy AS le, C.GovernmentForm AS gf, Cl.Language AS l
FROM country C, countrylanguage Cl
WHERE C.LifeExpectancy>(SELECT ".$agg_type."(C3.LifeExpectancy)
FROM country C3) AND C.LifeExpectancy<(SELECT C2.LifeExpectancy
FROM country C2
WHERE C2.Name= " . "'" . $country_name . "'" . ") AND C.Code=Cl.CountryCode")){
      return $result;
    }
    return $result;
}

function find_min_max_continent($conn){

    $result = Null;
    ########
    #Please enter your code here

    ########

    if($result = mysqli_query($conn, "SELECT C1.Name AS name, C1.Continent AS ct, C1.LifeExpectancy AS le
FROM country C1
WHERE C1.LifeExpectancy IN (SELECT MIN(C2.LifeExpectancy)
                            FROM country C2
    						WHERE C2.Continent = C1.Continent
  							) OR C1.LifeExpectancy IN (
    												SELECT MAX(C2.LifeExpectancy)
                                                    FROM country C2
                                                    WHERE C2.Continent = C1.Continent)")){
      return $result;
    }
    return $result;
}

function find_country_language($conn, $percentage, $language){

    $result = Null;
    ########
    #Please enter your code here

    ########
    if(is_contains($conn, $language, "Language", "countrylanguage")==False){
      exit("Language name isn't valid");
    }

    if($result = mysqli_query($conn, "SELECT C.Name AS name, Cl.Language AS l, Cl.Percentage AS p
FROM country C, countrylanguage Cl
WHERE C.Code=Cl.CountryCode AND Cl.Language=" . "'" . $language . "'" . " AND Cl.Percentage>".$percentage."")){
      return $result;
    }
    return $result;
}

function find_country_count($conn, $amount){

    $result = Null;
    ########
    #Please enter your code here

    ########

    if($result = mysqli_query($conn, "SELECT C.Name AS name, MAX(C.LifeExpectancy) AS le, C.Continent AS ct
FROM country C
WHERE (SELECT COUNT(*)
       FROM city Cty2
       WHERE Cty2.CountryCode=C.Code)>".$amount."
GROUP BY C.Continent
ORDER BY C.Name ASC")){
      return $result;
    }
    return $result;
}



function print_table($table_name, $result){

    if ($table_name === 'city'){

        ?><br>

        <table border='1'>

        <tr>

        <th>ID</th>

        <th>Name</th>

        <th>Country Code</th>

        <th>District</th>

        <th>Population</th>

        </tr>

        <?php


        foreach($result as $row){

            echo "<tr>";

            echo "<td>" . $row['ID'] . "</td>";

            echo "<td>" . $row['Name'] . "</td>";

            echo "<td>" . $row['CountryCode'] . "</td>";

            echo "<td>" . $row['District'] . "</td>";

            echo "<td>" . $row['Population'] . "</td>";

            echo "</tr>";
        }

        echo "</table>";
    }

}

function insert_city($conn,$cid, $name, $country_code, $district, $population){


    $sql = "INSERT INTO city(ID, Name, CountryCode, District, Population) VALUES('$cid', '$name', '$country_code', '$district','$population');";
    if ($conn->query($sql) === TRUE) { #We used different function to run our query.
        echo "<br>Record updated successfully<br>";
    } else {
        echo "<br>Error updating record: " . $conn->error . "<br>";
    }
}

function remove_city($conn,$cid){
    $sql = "DELETE FROM city WHERE ID='$cid'";
    if ($conn->query($sql) === TRUE) {
        echo "Record updated successfully";
    } else {
        echo "Error updating record: " . $conn->error;
    }

}

function manipulate_city($conn,$cid,$name){

    $sql = "UPDATE city SET Name='$name' WHERE ID='$cid'" ;
    if ($conn->query($sql) === TRUE) {
        echo "Record updated successfully";
    } else {
        echo "Error updating record: " . $conn->error;
    }

}
