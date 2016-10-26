

<?php
echo "Su base está siendo salvada.......\n<br>";
system("mysqldump --host=localhost --user=root --password= base --add-drop-table > copia.sql");
echo "Fin. Puede recuperar la base por FTP";
?>

