<?php 
include 'header.php';
include 'connect.php';

    $req = "SELECT manga.*,s.nb_chap FROM `manga` LEFT JOIN scan s ON s.manga_id = manga.manga_id";
    $resultat = mysqli_query($id, $req);    
?>

<body>
    <section class='manga-scan-box'>
        <?php
        $manga_precedente='';
            while($manga = mysqli_fetch_assoc($resultat)){
                if ($manga_precedente != $manga['ID'])
                {
                    echo
                        "<a href=scan.php?mid=" . $manga["manga_id"] . " class='boxmanga'>
                            <img src='media/aff_princi/" . $manga["manga_img"] . "' class='pp'>
                            <span>" . $manga["manga_nom"] . "</span>
                            <span> Chapitre ".$manga['nb_chap']."</span>
                        </a>"
                    ;
                    
                }
                $manga_precedente=$manga["ID"];
            }
        ?>
    </section>
</body>
</html>