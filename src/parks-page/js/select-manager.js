import FetchUtil from "../../common/js/fetch-util.js";

class SelectManager {
  constructor(parentElement) {
    this.rootElement = parentElement;
    this.elements = {};
    this.currentOptionValue = 0;
  }

  init() {
    this.initElements();
    this.readOptions();
  }

  initElements() {
    this.elements = {
      selectElement: this.rootElement.querySelector("select"),
      optionsContainer: document.createElement("div"),
    };
    this.elements.optionsContainer.classList.toggle("options-container", true);
    this.rootElement.appendChild(this.elements.optionsContainer);
  }

  readOptions() {
    FetchUtil.postData("./php/read-regions.php", {}).then((response) => {
      if ((response.status = "success")) {
        let options = JSON.parse(response.data);
        options.forEach((option) => {
          let optionElement = document.createElement("option");
          optionElement.innerHTML = option["nome"];
          optionElement.value = option["id"];
          this.elements.selectElement.appendChild(optionElement);
        });
        this.buildCustomElements();
      } else {
        console.log(response.status);
      }
    });
  }

  buildCustomElements() {
    for (let i = 0; i < this.elements.selectElement.length; i++) {
      let div = document.createElement("div");
      div.innerHTML = this.elements.selectElement[i].innerHTML;
      div.classList.toggle("option-container", true);
      div.classList.toggle("hide", true);
      div.id = this.elements.selectElement[i].value;
      this.elements.optionsContainer.appendChild(div);
    }
    this.setActiveOption();
    this.initEventListeners();
  }

  setActiveOption() {
    for (let i = 0; i < this.elements.selectElement.length; i++) {
      let currentDiv = this.elements.optionsContainer.querySelector(
        `[id='${i}']`
      );
      if (currentDiv.id == this.currentOptionValue) {
        currentDiv.classList.toggle("hide", false);
      } else {
        currentDiv.classList.toggle("hide", true);
      }
    }
  }

  initEventListeners() {
    for (let i = 0; i < this.elements.selectElement.length; i++) {
      this.elements.optionsContainer.children[i].addEventListener(
        "click",
        (event) => {
          if (this.currentOptionValue != event.target.id) {
            this.currentOptionValue = event.target.id;
            this.setActiveOption();
          } else {
            for (let i = 0; i < this.elements.selectElement.length; i++) {
                if(this.elements.optionsContainer.children[i].classList.contains("hide") || this.elements.optionsContainer.children[i].id == this.currentOptionValue) {
                  this.elements.optionsContainer.children[i].classList.toggle("hide", false);
                }else{
                  this.elements.optionsContainer.children[i].classList.toggle("hide", true);
                }
                
            }
          }
          console.log(this.currentOptionValue);
        }
      );
    }
  }
}

export default SelectManager;
