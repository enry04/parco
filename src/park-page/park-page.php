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

    <h4>La fauna...</h4>

    <div class="animals-container">
        <!-- <h4 class="no-animals-text hide">Non è stato avvistato nessun animale</h4> -->
        <table class="animal-table">
            <thead>
                <tr>
                    <th>Codice</th>
                    <th>Specie</th>
                    <th>Ordine appartenenza</th>
                    <th>Generazione</th>
                    <th>Sesso</th>
                    <th>Stato</th>
                    <th>Età</th>

                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>2</td>
                    <td>Orso polare</td>
                    <td>Mammifero</td>
                    <td>Adulto</td>
                    <td>Maschio</td>
                    <td>Malato</td>
                    <td>12</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Orso polare</td>
                    <td>Mammifero</td>
                    <td>Adulto</td>
                    <td>Maschio</td>
                    <td>Malato</td>
                    <td>12</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Orso polare</td>
                    <td>Mammifero</td>
                    <td>Adulto</td>
                    <td>Maschio</td>
                    <td>Malato</td>
                    <td>12</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Orso polare</td>
                    <td>Mammifero</td>
                    <td>Adulto</td>
                    <td>Maschio</td>
                    <td>Malato</td>
                    <td>12</td>
                </tr>
            </tbody>
        </table>
    </div>

    <h4>Gli arbusti...</h4>

    <div class="shrubs-container">
        <h4 class="no-shrubs-text hide">Non ci sono arbusti in questo parco</h4>
        <table class="shrubs-table">
            
        </table>
    </div>

    <h4>I pini...</h4>

    <div class="pines-container">
        <h4 class="no-pines-text hide">Non ci sono pini in questo parco</h4>
        <table class="pines-table"></table>
    </div>

    <footer>
        <div class="add-record-container">
            <h6 class="add-text">
                Avvistato un<br> nuovo esemplare?<br><span class="add-record-btn">clicca qui</span>
            </h6>
        </div>
    </footer>
    <script src="./js/park-view.js" type="module"></script>
</body>

</html>