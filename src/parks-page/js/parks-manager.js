class ParksManager {
  constructor(parentElement) {
    this.rootElement = parentElement;
    this.currentId;
    this.elements = {};
    const parser = new DOMParser();
    const parkTemplate =
      '<div class="item-container"><div class="park-image-container"></div><div class="info-container"><h5 class="park-title-text"></h5><h6 class="park-description-text"></h6><input type="button" value="Dettagli" class="details-btn" /></div></div></div>';
    const templateElement = parser.parseFromString(parkTemplate, "text/html");
    this.template = templateElement.documentElement.querySelector("body > div");
  }

  init() {
    this.initElements();
    this.initEventListeners();
  }

  initElements() {

    this.elements = {
      regionText: this.rootElement.querySelector(".region-text") != null ? this.rootElement.querySelector(".region-text") : this.createElement(),
      image: this.template.querySelector(".park-image-container"),
      parkTitle: this.template.querySelector(".park-title-text"),
      parkDescription: this.template.querySelector(".park-description-text"),
      detailsBtn: this.template.querySelector(".details-btn"),
    };
    this.rootElement.appendChild(this.template);
  }

  initEventListeners() {
    this.elements.detailsBtn.addEventListener("click", (event) => {});
  }

  createElement(){
    let element = document.createElement("h4");
    element.classList.toggle("region-text", true);
    this.rootElement.appendChild(element);
    return element;
  }

  setId(id) {
    this.currentId = id;
  }

  setRegionText(regionText) {
    this.elements.regionText.textContent = "I parchi presenti in " + regionText;
  }

  setImage(image) {
    this.elements.image.style.backgroundImage = `url(${image})`;
  }

  setParkTitle(parkTitle) {
    this.elements.parkTitle.innerHTML = parkTitle;
  }

  setParkDescription(parkDescription) {
    this.elements.parkDescription.innerHTML = parkDescription;
  }

  static reset() {
    let parkElements = document.querySelectorAll(".item-container");
    if( parkElements != null) {
        parkElements.forEach((parkElement) => {
            parkElement.remove();
        })
    }
  }
  static removeRegionText(){
    let regionText = document.querySelector(".region-text");
    if(regionText != null){
        regionText.remove();
    }
  }
}

export default ParksManager;
