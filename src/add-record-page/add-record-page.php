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
        <h5>Aggiungi un esemplare</h5>
        <form method="post">
                <div class="items-container">
                <div class="input-container select-container">
                <select class="exemplary-select">
                        <option value="" selected disabled hidden>-- Seleziona esemplare --</option>
                        <option value="0">Animale</option>
                        <option value="1">Vegetale</option>
                    </select>
                </div>
                <div class="animal-container">
                    <div class="input-container">
                        <input type="text" required class="order-text" placeholder="Ordine di appartenenza">
                    </div>
                    <div class="input-container">
                        <input type="text" required class="species-text" placeholder="Specie">
                    </div>
                    <div class="input-container select-container">
                        <select class="sex-select " >
                            <option value="" selected disabled hidden>-- Seleziona sesso -- </option>
                            <option value="0">M</option>
                            <option value="1">F</option>
                        </select>
                    </div>
                    <div class="input-container select-container">
                        <select class="generation-select">
                            <option value="" selected disabled hidden>-- Seleziona generazione --</option>
                            <option value="0">Cucciolo</option>
                            <option value="1">Adulto</option>
                            <option value="2">Anziano</option>
                        </select>
                    </div>
                    <div class="input-container select-container">
                        <select class="state-select">
                            <option value="" selected disabled hidden>-- Seleziona stato --</option>
                            <option value="0">In salute</option>
                            <option value="1">Malato</option>
                        </select>
                    </div>
                    <div class="input-container">
                        <h6>Età:</h6>
                        <input type="number" class="age-number">
                    </div>
                </div>
                <div class="input-container">
                    <input type="submit" value="Conferma" class="submit-btn">
                </div>
            </div>
        </form>
    </div>
</body>

</html>