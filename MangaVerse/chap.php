<?php 
$mid = $_GET['mid'];
/*include 'connect.php';

$chap = $_GET['chap'];
$mid = $_GET['mid'];

    $req = "select page from chapitre where nb_chap=$chap and manga_id='$mid'";
    $resultat = mysqli_query($id, $req);

    while($chapitre = mysqli_fetch_assoc($resultat)) {
        echo $chapitre['page'];
    }*/
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MangaVerse</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <section>
        <div class="box">
            <div class="box-1">
                <span>< Préc</span>
                <select name="choice" id="">
                    <option value="1">1</option>
                    <option value="2">2</option>
                </select>
                <span>Suiv ></span>
            </div>
            <img src="media/manga/OP/Chapitre 1/1.jpg" alt="">
            <a href="scan.php?mid=<?php echo $mid ?>">Revenir en arrière >>></a>
        </div>
    </section>
</body>
</html>

