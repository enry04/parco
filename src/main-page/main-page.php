<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ministero dell' ambiente</title>
    <link rel="stylesheet" href="../common/css/page-style.css">
    <link rel="stylesheet" href="./css/main-page-style.css">
    <link rel="icon" href="../common/images/icons/icon-logo.svg">

</head>

<body>
    <?php
    $page = "main";
    $active = 'class="active-page"';
    require('../common/php/header.php');
    ?>
    <main>
        <div class="main-container">
            <div class="text-container">
                <h4>Benvenuto nel sito del Ministero <br>dell' ambiente! </h4>
                <h5 style="text-shadow: none;">Offriamo la possibilità di visualizzare gli<br>
                    animali e i vegetali presenti in ogni <br>
                    parco italiano!<br>
                    Il sito è costantemente aggiornato <br>
                    sia nella flora che nella fauna in<br>
                    ogni riserva naturale!
                </h5>
            </div>
            <div class="slide-container">
                <div class="slide-image-container first fade hide" id="1">
                    <h6 class="current-image-text">1 / 4</h6>
                </div>
                <div class="slide-image-container second fade hide" id="2">
                    <h6 class="current-image-text">2 / 4</h6>
                </div>
                <div class="slide-image-container third fade hide" id="3">
                    <h6 class="current-image-text">3 / 4</h6>
                </div>
                <div class="slide-image-container fourth fade hide" id="4">
                    <h6 class="current-image-text">4 / 4</h6>
                </div>
                <a class="prev">&#10094;</a>
                <a class="next">&#10095;</a>
                <div class="dots-container">
                    <span class="dot" id="1"></span>
                    <span class="dot" id="2"></span>
                    <span class="dot" id="3"></span>
                    <span class="dot" id="4"></span>
                </div>
            </div>
        </div>
    </main>
    <h4>Gli animali a rischio di estinzione...</h4>
    <div class="extinction-container" id="extinction">
    </div>
    <h4>I cuccioli nati quest' anno...</h4>
    <div class="births-container" id="births">

    </div>

    <script src="./js/main-page-view.js" type="module"></script>
</body>

</html>