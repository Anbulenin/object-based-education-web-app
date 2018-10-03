<?php
include 'database/db_con.php';

// run query
$query = mysql_query("SELECT * FROM kk_product");

// set array
$array = array();

// look through query
while($row = mysql_fetch_assoc($query)){

  // add each row returned into an array
  $array[] = $row;

  // OR just echo the data:
  echo $row['part_name']; // part_name
  echo '&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  ';
  echo $row['quantity']; // quantity
  echo '&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  ';
  echo $row['price']; // price

echo '</br>';  
echo '</br>';  

}

// debug:
//print_r($array); // show all array data
echo '</br>';
//echo $array[0]['part_name']; // print the first rows username

?>