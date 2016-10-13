<?php

include('adodb/adodb.inc.php');
include('adodb/adodb-active-record.inc.php');
function getConexion(){
$conexionLocal="mysql://root@localhost/appnutri";
$conexionHosting="mysql://eshos_18502119:12345678@sql106.eshost.com.ar/eshos_18502119_nutri";
$db = NewADOConnection($conexionLocal);
ADOdb_Active_Record::SetDatabaseAdapter($db);
return $db;
}
/*
include $_SERVER['DOCUMENT_ROOT'].'appnutri/modelos/adodb/adodb.inc.php';
include $_SERVER['DOCUMENT_ROOT'].'appnutri/modelos/adodb/adodb-active-record.inc.php';
function getConexion(){
$conexionLocal="mysql://root@localhost/appnutri";
$conexionHosting="mysql://root@localhost/nutricion";
$db = NewADOConnection($conexionLocal);
ADOdb_Active_Record::SetDatabaseAdapter($db);
return $db;
}
*/

?>