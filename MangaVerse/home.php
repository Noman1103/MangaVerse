<?php 
include 'header.php'; 
include 'connect.php';

    $req = "select * from manga limit 4";
    $resultat = mysqli_query($id, $req);
?>

<body>
    <div class="slider-container slider-1">
        <div class="slider">
            <img src="media/img/OP.jpg">
            <img src="media/img/DBZ.png">
            <img src="media/img/OP.jpg">
        </div>
    </div>
    <div class='home-manga-box'>
        <span class='text-manga-box'>Top manga à lire</span>
            <div class='top-scan-box'>
                <?php 
                    while($list = mysqli_fetch_assoc($resultat))
                    {
                        echo"
                            <a href=scan.php?mid=".$list["manga_id"]." class='boxmanga'>
                                <img src='media/aff_princi/".$list["manga_img"]."' class='pp'>
                                <span>".$list["manga_nom"]."</span>
                            </a>"
                        ;
                    }
                ?>
            </div>
        <a href="manga.php" class='suite-manga'>
            <p class='text_suite'>Accedez aux autres manga >>></p>
        </a>
    </div>
</body>
</html>