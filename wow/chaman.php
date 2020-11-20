<html>
  <head>
    <link rel="stylesheet" type="text/css" href="wow.css" />
    <link href="https://fonts.googleapis.com/css?family=Marcellus&display=swap" rel="stylesheet">
  </head>
 <body style = "background-color:#191410" >
		<?php include 'head2.php' ?>
		<img id="class_img" src = "images/classes/chaman.png">
	  <?php include 'connect.php' ?>
	  
	  <div id ="class_txt">
	  <div id="nom_class"> 
<?php $reqCat=$bd->prepare('SELECT * FROM classes WHERE id=4');
$reqCat->execute();
$reqCat->setFetchMode(PDO::FETCH_OBJ);
while ($result=$reqCat->fetch() ) {
 echo '<p>',$result->nom;
}

$reqCat->closeCursor(); ?> </div>

<?php $reqCat=$bd->prepare('SELECT * FROM classes WHERE id=4');
$reqCat->execute();
$reqCat->setFetchMode(PDO::FETCH_OBJ);
while ($result=$reqCat->fetch() ) {
 echo '<p>',$result->description;
}

$reqCat->closeCursor(); ?>  </br> </br> </br> </br>

<p id ="subtitile"> TYPE D'ARMURES  </p>
<?php $reqCat=$bd->prepare('SELECT * FROM classes WHERE id=4');
$reqCat->execute();
$reqCat->setFetchMode(PDO::FETCH_OBJ);
while ($result=$reqCat->fetch() ) {
 echo '<p>',$result->armure;
}



$reqCat->closeCursor(); ?> </br> </br> </br> </br>
 
<p id ="subtitile"> RÔLES </p>
<?php $reqCat=$bd->prepare('SELECT * FROM classes WHERE id=4');
$reqCat->execute();
$reqCat->setFetchMode(PDO::FETCH_OBJ);
while ($result=$reqCat->fetch() ) {
 echo '<p>',$result->role;
}

$reqCat->closeCursor(); ?> </br> </br> </br> </br>

<p id ="subtitile"> EXTENSION D'APPARITION </p>
<?php $reqCat=$bd->prepare('SELECT extensions.nom FROM extensions, classes WHERE extensions.id =classes.id_extensions and classes.id=4');
$reqCat->execute();
$reqCat->setFetchMode(PDO::FETCH_OBJ);
while ($result=$reqCat->fetch() ) {
 echo '<p>',$result->nom;
}

$reqCat->closeCursor(); ?> </br> </br> </br> </br>

<p id ="subtitile"> RACES COMPATIBLES </p> 
<?php $reqCat=$bd->prepare('SELECT races.nom FROM races, races_classes WHERE races.id =races_classes.id_races and races_classes.id_classes=4');
$reqCat->execute();
$reqCat->setFetchMode(PDO::FETCH_OBJ);
while ($result=$reqCat->fetch() ) {
 echo '<p>',$result->nom;
}

$reqCat->closeCursor(); ?> </p>
</div>

</body>
</html>


