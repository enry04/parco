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
                <h6 class="park-description-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.</h6>
                <input type="button" value="Dettagli" class="details-btn">
            </div>
        </div>
        <div class="item-container">
            <div class="park-image-container"></div>
            <div class="info-container">
                <h5 class="park-title-text">Parco gogo ciao</h5>
                <h6 class="park-description-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut dui sed metus ornare posuere nec ut nisl. Integer rhoncus tellus in tincidunt porttitor. Suspendisse vulputate, magna sed congue varius, quam neque bibendum tellus, ut pulvinar massa turpis vitae neque. Duis elementum lectus in convallis consectetur. Maecenas gravida lectus a metus laoreet, nec convallis leo vehicula. Integer sit amet dictum leo. Maecenas ultricies bibendum sapien sit amet porta. Aenean egestas, sapien id tempor sodales, arcu est vulputate enim, id ultricies lacus neque et magna. In ac purus id elit hendrerit varius at sodales nunc. Nulla facilisi. Maecenas vitae odio sit amet nulla finibus dapibus. Aenean ex est, cursus sit amet tempor vel, ultricies at nulla. Cras id feugiat orci, a fringilla arcu. Quisque pellentesque sem ac turpis sagittis lobortis.</h6>
                <input type="button" value="Dettagli" class="details-btn">
            </div>
        </div>
    </div>
    <script src="./js/parks-view.js" type="module"></script>
</body>

</html>