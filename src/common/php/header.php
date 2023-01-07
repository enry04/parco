<header>
    <div class="header-container">
        <div class="left-header-container">
            <h4>
                <a <?= ($page == "main") ? $active : '' ?> class="header-option" href="../main-page/main-page.php">Home</a>
            </h4>
            <h4>
                <a <?= ($page == "contact-us") ? $active : '' ?> class="header-option" href="../contact-us-page/contact-us-page.php">Contattaci</a>
            </h4>
        </div>
        <h4 class="current-park-text"></h4>
        <div class="logo-container"></div>
        <div class="right-header-container">
            <h4>
                <a <?= ($page == "parks") ? $active : '' ?> class="header-option" href="../parks-page/parks-page.php"> I nostri parchi</a>
            </h4>
            <div class="hamburger-container">
                <input type="checkbox" class="option-btn">
                <div class="bar1"></div>
                <div class="bar2"></div>
                <div class="bar3"></div>
            </div>
            </input>
        </div>
    </div>
</header>