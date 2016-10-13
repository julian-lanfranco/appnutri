<?php
require_once('conexion.php');
//include('adodb/adodb.inc.php');
$db=getConexion();
//$db = NewADOConnection('mysql://root@localhost/appnutri');
//ADOdb_Active_Record::SetDatabaseAdapter($db);

class Ingesta extends ADOdb_Active_Record{}

?>
