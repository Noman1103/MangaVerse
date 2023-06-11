<?php 
extract($_POST);
session_start();

$bdd = new PDO("mysql:host=localhost;dbname=manga_verse;charset=utf8;","root","");

if(isset($_POST['admin'])){
    $pseudo = $_POST['adminId'];
    $mdp = $_POST['adminPass'];

    // Requête SQL pour récupérer l'utilisateur correspondant au nom d'utilisateur saisi
    $recupAdmin = $bdd->prepare("SELECT * FROM admin WHERE idAdmin = ? AND passAdmin = ?");
    $recupAdmin->execute(array($pseudo, $mdp));

    if ($recupAdmin->rowCount() > 0) {
        header('Location: admin.php');
    } else {
        echo "Identifiants incorrects. Veuillez réessayer.";
    }
}
    
?>
