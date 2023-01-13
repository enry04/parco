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
<div class="pop-up-container pause animation">
        <h4>Esemplare aggiunto!</h4>
    </div>
    <div class="back-container"></div>
    <div class="main-container">
        <h5 style="color: #fffffe;">Aggiungi un esemplare</h5>
        <div class="items-container">
            <div class="input-container select-container">
                <select class="exemplary-select">
                    <option value="" selected disabled hidden>-- Seleziona esemplare --</option>
                    <option value="0">Animale</option>
                    <option value="1">Vegetale</option>
                </select>
            </div>
            <form method="post" class="animal-form hide">
                <div class="animal-container">
                    <div class="row">
                        <div class="input-container">
                            <input type="text" required class="order-text" placeholder="Ordine di appartenenza" onkeypress='return ((event.charCode >= 65 && event.charCode <= 90) || (event.charCode >= 97 && event.charCode <= 122) || (event.charCode == 32))'>
                        </div>
                        <div class="input-container">
                            <input type="text" required class="animal-species-text" placeholder="Specie" onkeypress='return ((event.charCode >= 65 && event.charCode <= 90) || (event.charCode >= 97 && event.charCode <= 122) || (event.charCode == 32))'>

                        </div>
                    </div>
                    <div class="row">
                        <div class="input-container select-container">
                            <select class="gender-select" required>
                                <option value="" selected disabled hidden>-- Seleziona sesso -- </option>
                                <option value="maschio">M</option>
                                <option value="femmina">F</option>
                            </select>
                        </div>
                        <div class="input-container select-container">
                            <select class="generation-select" required>
                                <option value="" selected disabled hidden>-- Seleziona generazione --</option>
                                <option value="cucciolo">Cucciolo</option>
                                <option value="adulto">Adulto</option>
                                <option value="anziano">Anziano</option>
                            </select>
                        </div>
                        <div class="input-container select-container">
                            <select class="state-select" required>
                                <option value="" selected disabled hidden>-- Seleziona stato --</option>
                                <option value="in salute">In salute</option>
                                <option value="malato">Malato</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-container">
                            <input type="date" class="date-input" required >
                        </div>
                    </div>
                    <div class="row submit-row ">
                        <div class="input-container">
                            <input type="submit" value="Conferma" class="submit-btn">
                        </div>
                    </div>
                </div>
            </form>
            <form method="post" class="vegetable-form hide">
                <div class="vegetable-container">
                    <div class="row">
                        <div class="input-container">
                            <select class="family-select" required>
                                <option value="" selected disabled hidden>-- Seleziona famiglia --</option>
                            </select>
                        </div>
                        <div class="input-container">
                            <select class="season-select" required>
                                <option value="" selected disabled hidden>-- Seleziona stagione di fioritura --</option>
                                <option value="inverno">Inverno</option>
                                <option value="primavera">Primavera</option>
                                <option value="estate">Estate</option>
                                <option value="autunno">Autunno</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-container">
                            <input type="text" class="vegetable-species-text" placeholder="Specie" required onkeypress='return ((event.charCode >= 65 && event.charCode <= 90) || (event.charCode >= 97 && event.charCode <= 122) || (event.charCode == 32))'>
                        </div>
                    </div>
                    <div class="row submit-row">
                        <div class="input-container">
                            <input type="submit" value="Conferma" class="submit-btn">
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <script src="./js/add-record-view.js" type="module"></script>
</body>

</html>