<?php
  
  Include("database/db_conection.php");

if(isset($SESSION['id']))
{
  header("location:index.php");
  exit();
}
else
{
  $userData = getUserData($_SESSION['id']);
}


$query = @mysql_query("select emailid from login where emailid='$get_email'");

	while($row=$query->fetch_assoc())

	{

		if($get_email==emailid)
		{
			echo'pass';
		}
	}
	?>