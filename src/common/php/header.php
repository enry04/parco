<header>
        <div class="header-container">
            <div class="left-header-container">
                <h3>
                    <a <?= ($page == "main")? $active : '' ?> class="header-option" href="../main-page/main-page.php">Home</a>
                </h3>
                <h3>
                    <a <?= ($page == "contact-us")? $active : '' ?> class="header-option" href="../contact-us-page/contact-us-page.php">Contattaci</a>
                </h3>
            </div>
            <div class="logo-container"></div>
            <div class="right-header-container">
                <h3>
                    <a <?= ($page == "parks")? $active : '' ?>  class="header-option" href="../parks-page/parks-page.php"> I nostri parchi</a>
                </h3>
                <div class="hamburger-container">
                    <div class="bar1"></div>
                    <div class="bar2"></div>
                    <div class="bar3"></div>
                </div>
            </div>
        </div>
    </header>