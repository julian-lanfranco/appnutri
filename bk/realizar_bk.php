<?php 

$executa="C:\\xampp\mysql\bin\mysqldump.exe --opt --user=root --password= appnutri > C:\\bk\\copia_seguridad_2.sql"; 

system($executa,$error);
echo $error;

?>

