<?php
include 'database/db_con.php';

$row_data = array();
foreach($_POST['name'] as $row=>$name) {

echo 'hiii :', $name;  

$name=mysql_real_escape_string($name, $dbcon1);
$quty=mysql_real_escape_string(($_POST['quantity'][$row]), $dbcon1);
$price=mysql_real_escape_string(($_POST['price'][$row]), $dbcon1);

$row_data[] = "('$name', '$quty', '$price')";
}
if (!empty($row_data)) {
$sql = 'INSERT INTO kk_product(part_name, quantity, price) VALUES '.implode(',', $row_data);
$result = mysql_query($sql, $dbcon1 ) or die(mysql_error($dbcon1));

if ($result)
echo 'Successful inserts: ' . mysql_affected_rows($dbcon1);
else
echo 'query failed' ;
}

?>