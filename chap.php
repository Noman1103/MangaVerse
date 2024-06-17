<?php 
include 'connect.php';

$chap = $_GET['chap'];
$mid = $_GET['mid'];

    $req = "SELECT * from chapitre where nb_chap=$chap and manga_id='$mid' and first = 1";
    $resultat = mysqli_query($id, $req);
    $chapitre = mysqli_fetch_assoc($resultat);

    $requete = "SELECT * from chapitre where nb_chap=$chap and manga_id='$mid' and first = 0  ORDER BY page ASC";
    $res = mysqli_query($id, $requete);

?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MangaVerse</title>
    <link rel="stylesheet" href="css/chap.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
    <section id="carouselExample" class="carousel slide">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="media/manga/<?php echo $chapitre['manga_id']."/Chapitre ".$chapitre['nb_chap']."/".$chapitre['page']?>" class="d-block w-100">
            </div>
            <?php 
                while ($page = mysqli_fetch_assoc($res)){ 
                    echo 
                        "<div class='carousel-item'>
                            <img src='media/manga/".$page['manga_id']."/Chapitre ".$page['nb_chap']."/".$page['page']."' class='d-block w-100'>
                        </div>"
                    ;
                }
            ?>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
        <a href="scan.php?mid=<?php echo $mid ?>" class=''>
            <p class='text_suite'><<< Revenir </p>
        </a>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>

