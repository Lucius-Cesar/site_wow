<html>
  <head>
    <link rel="stylesheet" type="text/css" href="wow.css" />
    <link href="https://fonts.googleapis.com/css?family=Marcellus&display=swap" rel="stylesheet">
  </head>
    <body style = "background-color:#191410" >
		 <?php include 'head2.php' ?>
	<img id="extension_background" src = "images/extensions/mop.jpg">
	  <?php include 'connect.php' ?>
		
	  <div id ="extension_txt">
	  <div id="titre_extension"> 
<?php $reqCat=$bd->prepare('SELECT * FROM extensions WHERE id=5');
$reqCat->execute();
$reqCat->setFetchMode(PDO::FETCH_OBJ);
while ($result=$reqCat->fetch() ) {
 echo '<p>',$result->nom;
}

$reqCat->closeCursor(); ?> </div>

<?php $reqCat=$bd->prepare('SELECT * FROM extensions WHERE id=5');
$reqCat->execute();
$reqCat->setFetchMode(PDO::FETCH_OBJ);
while ($result=$reqCat->fetch() ) {
 echo '<p>',$result->description;
}

$reqCat->closeCursor(); ?>  </br> </br>

<p id ="subtitile"> DATE DE SORTIE  </p>
<?php $reqCat=$bd->prepare('SELECT * FROM extensions WHERE id=5');
$reqCat->execute();
$reqCat->setFetchMode(PDO::FETCH_OBJ);
while ($result=$reqCat->fetch() ) {
 echo '<p>',$result->date;
}



$reqCat->closeCursor(); ?> </br> </br>
 
<p id ="subtitile"> NIVEAU MAXIMAL   </p>
<?php $reqCat=$bd->prepare('SELECT * FROM extensions WHERE id=5');
$reqCat->execute();
$reqCat->setFetchMode(PDO::FETCH_OBJ);
while ($result=$reqCat->fetch() ) {
 echo '<p>',$result->lvlmax;
}

$reqCat->closeCursor(); ?> </div>

</body>
</html>


