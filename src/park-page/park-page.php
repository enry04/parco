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
    $page = "parks";
    $active = 'class="active-page"';
    require("../common/php/header.php");
    ?>

    <h4>La fauna nel parco:</h4>

    <div class="animals-container">

    </div>

    <div class="add-record-container">
        <h6 class="add-text">
            Avvistato un<br> nuovo esemplare?<br><span class="add-record-btn">clicca qui</span>
        </h6>
    </div>
    <script src="./js/park-view.js"></script>
</body>

</html>