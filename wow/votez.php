<html>
  <head>
    <link rel="stylesheet" type="text/css" href="wow.css" />
    <link href="https://fonts.googleapis.com/css?family=Marcellus&display=swap" rel="stylesheet">
  </head>
    <body style = "background-color:#191410" >
		 <?php include 'head2.php' ?>

	<p id = faction_txt> VOTEZ POUR VOTRE CONTENU FAVORIS </p>
	<form method ="post"> 
	<label for="nom">Nom : </label> <input type ="text" name="nom" id = "nom" placeholder="Votre Nom" required> </br>
	<label for="prenom">Prénom : </label> <input type ="text" name="prenom" id = "prenom" placeholder="Votre Prénom" required> </br>
	<label for="age">Âge : </label> <input type ="int" name="age" id = "age" placeholder="ex : 18" required> </br>
	<label for="mail">Email : </label> <input type ="text" name="mail" id = "mail" placeholder="Votre Email" required> </br>
	<label for="pseudo">Pseudo in Game ( facultatif ) : </label> <input type ="text" name="pseudo" id = "pseudo" placeholder="Votre pseudo"> </br>

<label for="faction">Quelle est votre faction préférée ?</label>
<select name="faction" id="faction" required>
	<option value="">--selectionnez une faction-- </option>
   <option value="alliance">Alliance</option>
   <option value="horde">Horde</option>
</select>
</br> 
<label for="race"> Quelle est votre race préférée ?</label>
<select name="race" id="race">
	<option value="">--selectionnez une race-- </option>
   <option value="1">Humain</option>
   <option value="2">Nain</option>
   <option value="3">Elfe de la nuit</option>
   <option value="4">Gnome</option>
   <option value="5">Draeneï</option>
   <option value="6">Worgen</option>
   <option value="7">Pandaren</option>
   <option value="8">Orc</option>
   <option value="9">Réprouvé</option>
   <option value="10">Tauren</option>
   <option value="11">Troll</option>
   <option value="12">Elfe de sang</option>
   <option value="13">Gobelin</option>
</select>
</br> 

<label for="classe">Quelle est votre classe préférée ? </label>
<select name="classe" id="classe">
	<option value="">--selectionnez une classe-- </option>
   <option value="1">Guerrier</option>
   <option value="2">Chasseur</option>
   <option value="3">Prêtre</option>
   <option value="4">Chaman</option>
   <option value="5">Démoniste </option>
   <option value="6">Druide</option>
   <option value="7">Paladin</option>
   <option value="8">Voleur</option>
   <option value="9">Chevalier de la mort</option>
   <option value="10">Mage</option>
   <option value="11">Moine</option>
   <option value="12">Chasseur de démons</option>
</select>
</br> 

<label for="extensions">Quelle est votre extension préférée ?</label>
<select name="extension" id="extension">
	<option value="">--selectionnez une extension-- </option>
   <option value="1">Vanilla</option>
   <option value="2">Burning Crusade</option>
   <option value="3">Wrath of the lich King</option>
   <option value="4">Cataclysm</option>
   <option value="5">Mists of Pandaria </option>
   <option value="6">Warlords of Draenor</option>
   <option value="7">Legion</option>
   <option value="8">Battle for Azeroth</option>
   <option value="9">Shadowlands</option>
</select>

</br> </br>

<input type ="submit" name="formsend" id="formsend"  value = "Envoyer">
	</form>
</body>
</html>

<?php include 'connect.php' ?>
<?php
$nom = htmlspecialchars($_POST['nom']);
$prenom = htmlspecialchars($_POST['prenom']);
$age = htmlspecialchars($_POST['age']);
$mail = htmlspecialchars($_POST['mail']);
$pseudo = htmlspecialchars($_POST['pseudo']);
$faction = htmlspecialchars($_POST['faction']);
$race = htmlspecialchars($_POST['race']);
$classe = htmlspecialchars($_POST['classe']);
$extension = htmlspecialchars($_POST['extension']);

$reqsql = "INSERT INTO `votes` (`id`, `nom`, `prenom`, `age`, `mail`, `pseudo`, `faction`, `id_races`, `id_classes`, `id_extensions`) VALUES (NULL, '$nom', '$prenom', '$age', '$mail', '$pseudo', '$faction', '$race', '$classe', '$extension')";
$bd->exec($reqsql);
?>