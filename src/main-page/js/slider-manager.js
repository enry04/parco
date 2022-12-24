class SliderManager {
  constructor(parentElement) {
    this.rootElement = parentElement;
    this.elements = {};
    this.currentActive = 1;
  }

  init() {
    this.initElements();
    this.initEventListeners();
  }

  initElements() {
    this.elements = {
      images: this.rootElement.querySelectorAll(".slide-image-container"),
      prevBtn: this.rootElement.querySelector(".prev"),
      nextBtn: this.rootElement.querySelector(".next"),
      dots: this.rootElement.querySelectorAll(".dot"),
    };
    this.setActive();
  }

  initEventListeners() {
    this.elements.prevBtn.addEventListener("click", (event) => {
      this.currentActive--;
      if (this.currentActive < 1) {
        this.currentActive = 4;
      }
      this.setActive();
    });

    this.elements.nextBtn.addEventListener("click", (event) => {
      this.currentActive++;
      if (this.currentActive > 4) {
        this.currentActive = 1;
      }
      this.setActive();
    });
    this.elements.dots.forEach((dot) => {
      dot.addEventListener("click", (event) => {
        this.currentActive = event.target.id;
        this.setActive();
      });
    });
  }

  setActive() {
    for (let i = 0; i < this.elements.images.length; i++) {
      if (this.elements.images[i].id == this.currentActive) {
        this.elements.images[i].classList.toggle("show", true);
        this.elements.images[i].classList.toggle("hide", false);
        this.elements.dots[i].classList.toggle("selected", true);
      } else {
        this.elements.images[i].classList.toggle("show", false);
        this.elements.images[i].classList.toggle("hide", true);
        this.elements.dots[i].classList.toggle("selected", false);
      }
    }
  }
}

export default SliderManager;
