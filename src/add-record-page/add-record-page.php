<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ministero-dell'ambiente</title>
    <link rel="stylesheet" href="../common/css/page-style.css">
    <link rel="stylesheet" href="./css/add-record-page-style.css">
    <link rel="icon" href="../common/images/icons/icon-logo.svg">
</head>

<body>
    <div class="main-container">
        <h6>Aggiungi un esemplare</h6>
        <div class="items-container">
            <form method="post">
                <div class="input-container">
                    <select>
                        <option value="" selected disabled hidden>-- Seleziona esemplare --</option>
                        <option value="0">Animale</option>
                        <option value="1">Vegetale</option>
                    </select>
                </div>
                <div class="animal-container">
                    <div class="input-container">
                        <h6>Ordine di appartenenza:</h6>
                        <input type="text">
                    </div>
                    <div class="input-container">
                        <h6>Specie</h6>
                        <input type="text">
                    </div>
                    <div class="input-container">
                        <select>
                            <option value="" selected disabled hidden>-- Seleziona sesso -- </option>
                            <option value="0">M</option>
                            <option value="1">F</option>
                        </select>
                    </div>
                </div>
            </form>

        </div>
    </div>
</body>

</html>