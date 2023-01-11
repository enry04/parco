<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ministero dell' ambiente</title>
    <link rel="stylesheet" href="../common/css/page-style.css">
    <link rel="icon" href="../common/images/icons/icon-logo.svg">
    <link rel="stylesheet" href="./css/contact-us-page-style.css">

</head>

<body>
    <?php
    $page = "contact-us";
    $active = 'class="active-page"';
    require("../common/php/header.php");
    ?>
    <div class="main-container">
        <div class="row">
            <h2>Contattaci</h2>
        </div>
        <form method="post" class="contact-form">
            <div class="row">
                <input type="text" placeholder="Nome" class="name-text" required>
                <input type="email" placeholder="E-mail" class="email-text" required>
            </div>
            <div class="row">
                <textarea cols="30" rows="10" class="message-area" placeholder="Messaggio" required></textarea>
            </div>
            <div class="row">
                <input type="submit" value="Invia" class="submit-btn">
            </div>
        </form>
    </div>
    <script src="./js/contact-us-view.js" type="module"></script>
</body>

</html>