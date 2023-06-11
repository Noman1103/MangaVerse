<?php 
include 'header.php';
include 'connect.php';

$mid = $_GET['mid'];

    $req = "SELECT * from manga where manga_id='$mid'";
    $resultat = mysqli_query($id, $req);
    $manga = mysqli_fetch_assoc($resultat);
    $img = $manga["manga_img"];

    $req2 = "SELECT * from scan where manga_id='$mid'";
    $res = mysqli_query($id, $req2);

?>
<body>
    <section class="scan">
        <div class="scan-left">
            <img src="media/aff_princi/<?php echo $img;?>" class="scan-img">
        </div>

        <div class="scan-right">
            <h1 class="scan-title"><?php echo $manga["manga_nom"];?></h1>
            <p class="scan-res">Résumé du manga</p>
            <p class="scan-descrip"><?php echo $manga["manga_text"];?></p>
        </div>
    </section>

    <section class="chapitre">
        <div class="chapite-box">
            <?php 
                while($scan = mysqli_fetch_assoc($res)){
                    echo "<a href=chap.php?chap=".$scan["nb_chap"]."&mid=".$scan["manga_id"]." class='chapitre-scan'>Chapitre ".$scan["nb_chap"]."</a>";
                }
            ?>
        </div>
    </section>
</body>
</html>
