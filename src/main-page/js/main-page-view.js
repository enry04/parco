import SliderManager from "./slider-manager.js";
import FetchUtil from "../../common/js/fetch-util.js";
import BirthsManager from "./births-manager.js";
import ExtinctionManager from "./extinction-manager.js";

const slideImagesParent = document.querySelector(".slide-container");
const sliderManager = new SliderManager(slideImagesParent);
sliderManager.init();

const noExtinctionText = document.querySelector(".no-extinction-text");
const extinctionTable = document.querySelector(".extinction-table");
FetchUtil.postData("./php/read-extinction.php", {}).then((response) => {
  if (response.status == "success") {
    noExtinctionText.classList.toggle("hide", true);
    extinctionTable.classList.toggle("hide", false);
    const extinctionManager = new ExtinctionManager(extinctionTable);
    extinctionManager.init();
    let parseData = JSON.parse(response.data);

    parseData.forEach((extinctionData) => {
        extinctionManager.setRowData(extinctionData["nomeOrdine"], extinctionData["nomeSpecie"], extinctionData["esemplariMalati"], extinctionData["nEsemplari"], extinctionData["percMalati"]);
    })
  } else {
    noExtinctionText.classList.toggle("hide", false);
    extinctionTable.classList.toggle("hide", true);
  }
});

const noBirthsText = document.querySelector(".no-births-text");
const birthsTable = document.querySelector(".births-table");
FetchUtil.postData("./php/read-births.php", {}).then((response) => {
  if (response.status == "success") {
    noBirthsText.classList.toggle("hide", true);
    birthsTable.classList.toggle("hide", false);
    const birthsManager = new BirthsManager(birthsTable);
    birthsManager.init();
    let parseData = JSON.parse(response.data);
    parseData.forEach((birthData) => {
      birthsManager.setRowData(
        birthData["id"],
        birthData["nomeParco"] + " (" + birthData["nomeRegione"] + ")",
        birthData["nomeOrdine"],
        birthData["nomeSpecie"],
        birthData["sesso"],
        birthData["stato"],
        birthData["dataNascita"]
      );
    });
  } else {
    noBirthsText.classList.toggle("hide", false);
    birthsTable.classList.toggle("hide", true);
  }
});
