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
$sql =("SELECT programme_code,depart_code,peo_code,peo_desc from peo where faculty_code = '".$userData['faculty_code']."'");

mysql_select_db('Hits_events');

$retval = mysql_query( $sql);
if(! $retval )
{
  die('Could not get data: ' . mysql_error());

}

 while($row = mysql_fetch_array($retval)) 
   {  

   ?>


<?php

require('WriteHTML.php');
$pdf=new PDF_HTML();
$pdf->AliasNbPages();
$pdf->SetAutoPageBreak(true, 15);

$pdf->AddPage();
$pdf->Rect(5,5,200,287,'D');
$pdf->Image("hits.jpg",80,14,50);



$pdf->SetFont('Arial','B',18);
$pdf->Cell(0,50,'PROGRAMME EDUCATIONAL OUTCOMES(PEO)',0,0,'C');



$sql1 =("SELECT facultyname,department from  login where faculty_code = '".$userData['faculty_code']."'");

mysql_select_db('Hits_events');

$retvals = mysql_query( $sql1 );
if(!$retvals )
{
  die('Could not get data: ' . mysql_error());

}

 while($row1 = mysql_fetch_array($retvals)) 
   {  

$pdf->SetFont('Arial','B',12);
$pdf->Setx($pdf->lMargin);
$pdf->Cell(0,80,'Faculty Name:',0,0,'L');
$pdf->Setx($pdf->lMargin);
$pdf->cell(40,80,$row1["facultyname"],0,0,'R');

$pdf->SetFont('Arial','B',12);
$pdf->Setx($pdf->lMargin);
$pdf->Cell(0,100,'Department:',0,0,'L');
$pdf->Setx($pdf->lMargin);
$pdf->cell(40,100,$row1["department"],0,0,'R');



}






$pdf->SetFont('Arial','B',12);
$pdf->Setx($pdf->lMargin);
$pdf->Cell(150,80,'Programe code:',0,0,'R');
$pdf->Setx($pdf->lMargin);
$pdf->cell(165,80,$row["programme_code"],0,0,'R');

$pdf->SetFont('Arial','B',12);
$pdf->Setx($pdf->lMargin);
$pdf->Cell(153,100,'Department code:',0,0,'R');
$pdf->Setx($pdf->lMargin);
$pdf->cell(163,100,$row["depart_code"],0,0,'R');



$pdf->SetFont('Arial','B',12); 
$pdf->Setx($pdf->lMargin);
$pdf->Cell(200,160,'Program Educational Outcomes',0,0,'L');

while($row = mysql_fetch_array($retval))
{
 
  $pdf->SetFont('Arial','B',12);
$pdf->Setx($pdf->lMargin);
$pdf->Cell(150,200,"           *".$row["peo_code"]."-",0,0,'L');
$pdf->Setx($pdf->lMargin);
$pdf->cell(100,200,"                                            ".$row["peo_desc"],0,0,'L');
$pdf->WriteHTML("<BR><BR>");
}

$pdf->Output(); 
}
?>
