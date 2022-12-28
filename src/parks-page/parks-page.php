<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../common/css/page-style.css">
    <link rel="stylesheet" href="./css/parks-page-style.css">
    <title>Ministero dell' ambiente</title>
    <link rel="icon" href="../common/images/icons/icon-logo.svg">
</head>

<body>
    <?php
    $page = "parks";
    $active = 'class="active-page"';
    require("../common/php/header.php");
    ?>
    <div class="regions-container">
        <h5>Seleziona regione <br>
            del parco:</h5>
        <div class="select-container">
            <select>
                <option value="0">-- Seleziona regione --</option>
            </select>
        </div>
    </div>
    <div class="parks-container">
        <h4 class="region-text">Parchi in Friuli Venezia Giulia:</h4>
        <div class="item-container">
            <div class="park-image-container"></div>
            <div class="info-container">
                <h5 class="park-title-text">Parco gogo ciao</h5>
                <h6 class="park-description-text">DJIICNICNkvmskvsvksvksvdkqnedknkfknfkwnfkwnfkwefkwnfkwnfkwfkwfkwfn</h6>
                <input type="button" value="Dettagli" class="details-btn">
            </div>
        </div>
        <div class="item-container">
            <div class="park-image-container"></div>
            <div class="info-container">
                <h5 class="park-title-text">Parco gogo ciao</h5>
                <h6 class="park-description-text">DJIICNICNkvmskvsvksvksvdkqnedknkfknfkwnfkwnfkwefkwnfkwnfkwfkwfkwfn</h6>
                <input type="button" value="Dettagli" class="details-btn">
            </div>
        </div>
    </div>
    <script src="./js/parks-view.js" type="module"></script>
</body>

</html>