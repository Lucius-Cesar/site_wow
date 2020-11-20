<html>
  <head>
    <link rel="stylesheet" type="text/css" href="wow.css" />
    <link href="https://fonts.googleapis.com/css?family=Marcellus&display=swap" rel="stylesheet">
  </head>
 <body style = "background-color:#191410" >
		<?php include 'head2.php' ?>
		<img id="class_img" src = "images/races/troll.png">
	  <?php include 'connect.php' ?>
	  
	  <div id ="class_txt">
	  <div id="nom_class"> 
<?php $reqCat=$bd->prepare('SELECT * FROM races WHERE id=11');
$reqCat->execute();
$reqCat->setFetchMode(PDO::FETCH_OBJ);
while ($result=$reqCat->fetch() ) {
 echo '<p>',$result->nom;
}

$reqCat->closeCursor(); ?> </div>

<?php $reqCat=$bd->prepare('SELECT * FROM races WHERE id=11');
$reqCat->execute();
$reqCat->setFetchMode(PDO::FETCH_OBJ);
while ($result=$reqCat->fetch() ) {
 echo '<p>',$result->description;
}

$reqCat->closeCursor(); ?> </br> </br> </br> </br>
 
<p id ="subtitile"> CAPITALE </p>
<?php $reqCat=$bd->prepare('SELECT * FROM races WHERE id=11');
$reqCat->execute();
$reqCat->setFetchMode(PDO::FETCH_OBJ);
while ($result=$reqCat->fetch() ) {
 echo '<p>',$result->ville;
}

$reqCat->closeCursor(); ?> </br> </br> </br> </br>

<p id ="subtitile"> EXTENSION D'APPARITION </p>
<?php $reqCat=$bd->prepare('SELECT extensions.nom FROM races, extensions WHERE extensions.id =races.id_extensions and races.id=11');
$reqCat->execute();
$reqCat->setFetchMode(PDO::FETCH_OBJ);
while ($result=$reqCat->fetch() ) {
 echo '<p>',$result->nom;
}

$reqCat->closeCursor(); ?> </br> </br> </br> </br>

<p id ="subtitile"> RACES COMPATIBLES </p> 
<?php $reqCat=$bd->prepare('SELECT classes.nom FROM classes, races_classes WHERE classes.id =races_classes.id_classes and races_classes.id_races=11');
$reqCat->execute();
$reqCat->setFetchMode(PDO::FETCH_OBJ);
while ($result=$reqCat->fetch() ) {
 echo '<p>',$result->nom;
}

$reqCat->closeCursor(); ?> </p>
</div>

</body>
</html>


