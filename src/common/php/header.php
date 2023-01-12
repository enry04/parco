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
            <h5 class="popUp-block">
                <div class="hamburger-container">
                    <input type="checkbox" class="option-btn">
                    <div class="bar1"></div>
                    <div class="bar2"></div>
                    <div class="bar3"></div>
                </div>
                <div class="popUp-menu-container hide">
                    <div class="popUp-arrow">
                    </div>
                    <div class="popUp-inner">
                        <div class="popUp-line">
                            <a href="../main-page/main-page.php#extinction">Gli esemplari a rischio</a>
                        </div>
                        <div class="popUp-line">
                            <a href="../main-page/main-page.php#births">Le nuove nascite</a>
                        </div>
                    </div>
                </div>
            </h5>
            </input>
        </div>
    </div>
</header>
<script src="../common/js/hamburger-manager.js" type="module"></script>