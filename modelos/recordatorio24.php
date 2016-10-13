<?php
require_once('conexion.php');

$db=getConexion();
//$db = NewADOConnection('mysql://root@localhost/appnutri');
//ADOdb_Active_Record::SetDatabaseAdapter($db);

class Recordatorio24 extends ADOdb_Active_Record{}


?>
