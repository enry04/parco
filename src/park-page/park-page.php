<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../common/css/page-style.css">
    <link rel="stylesheet" href="./css/park-page-style.css">
    <title>Ministero dell' ambiente</title>
    <link rel="icon" href="../common/images/icons/icon-logo.svg">
</head>

<body>
    <?php
    $page = "park";
    $active = 'class="active-page"';
    require("../common/php/header.php");
    ?>

    <h4>La fauna nel parco...</h4>

    <div class="animals-container">
        <h4 class="no-animals-text hide">Non è stato avvistato nessun animale</h4>
        <table class="animal-table">
            
        </table>
    </div>

    <h4>Gli arbusti nel parco...</h4>

    <div class="shrubs-container">
        <h4 class="no-shrubs-text hide">Non ci sono arbusti in questo parco</h4>
        <table class="shrubs-table">
            
        </table>
        <footer>
            <h5 class="total-shrubs-text"></h5>
        </footer>
    </div>

    <h4>I pini nel parco...</h4>

    <div class="pines-container">
        <h4 class="no-pines-text hide">Non ci sono pini in questo parco</h4>
        <table class="pines-table">

        </table>
        <footer>
            <h5 class="total-pines-text"></h5>
        </footer>
    </div>

    <h4>I cuccioli di ogni specie...</h4>

    <div class="cubs-container">
        <h4 class="no-cubs-text hide">Non ci sono cuccioli in questo parco</h4>
        <table class="cubs-table">

        </table>
    </div>

    <h4>Gli esemplari più anziani di ogni specie...</h4>

    <div class="olders-container">
        <h4 class="no-olders-text hide">Non è stato avvistato nessun animale</h4>
        <table class="olders-table">
            
        </table>
    </div>

    <footer class="page-footer">
        <div class="add-record-container">
            <h6 class="add-text">
                Avvistato un<br> nuovo esemplare?<br><span class="add-record-btn">clicca qui</span>
            </h6>
        </div>
    </footer>
    <script src="./js/park-view.js" type="module"></script>
</body>

</html>