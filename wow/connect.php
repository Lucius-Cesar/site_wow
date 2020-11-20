<?php date_default_timezone_set('Europe/Brussels');
$hote='localhost';
$nomBD='db_name';
$user='user_name';
$mdp='password';
try {
 $bd=new PDO('mysql:host='.$hote.';dbname='.$nomBD, $user, $mdp);
}
catch (Exception $e) {
 echo 'Erreur de connexion à la BD';
}
?>
