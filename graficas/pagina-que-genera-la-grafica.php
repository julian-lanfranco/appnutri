<?php
require_once ("jpgraph/src/jpgraph.php");
require_once ("jpgraph/src/jpgraph_pie.php");

$hdc=$_GET['hdc'];
$proteinas=$_GET['proteinas'];
$lipidos=$_GET['lipidos'];

 
// Se define el array de valores y el array de la leyenda
$datos = array($hdc,$proteinas,$lipidos);
$leyenda = array("Hdc","Proteinas","Lipidos");
 
//Se define el grafico
$grafico = new PieGraph(450,300);
 
//Definimos el titulo
$grafico->title->Set("Distribucion de Calorias por Hdc, Proteinas y Lipidos por dia.");
$grafico->title->SetFont(FF_FONT1,FS_BOLD);
 
//Añadimos el titulo y la leyenda
$p1 = new PiePlot($datos);
$p1->SetLegends($leyenda);
$p1->SetCenter(.1);
 
//Se muestra el grafico
$grafico->Add($p1);
$grafico->Stroke();
?>
