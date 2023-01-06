import FetchUtil from "../../common/js/fetch-util.js";
import AnimalsManager from "./animals-manager.js";
import ShrubsManager from "./shrubs-manager.js";
import PinesManager from "./pines-manager.js";

let dataToReceive = new URLSearchParams(window.location.search);
let parkId = dataToReceive.get("parkId");
let parkName = dataToReceive.get("parkName");
const titleText = document.querySelector(".current-park-text");
titleText.classList.toggle("hide", false);
titleText.classList.toggle("active-page", true);
titleText.innerHTML += parkName;
document.querySelector(".logo-container").classList.toggle("hide", true);
const animalsData = {
  parkId: parseInt(parkId),
};
const noAnimalsText = document.querySelector(".no-animals-text");
const animalTable = document.querySelector(".animal-table");
FetchUtil.postData("./php/read-animals.php", animalsData).then((response) => {
  if (response.status == "success") {
    noAnimalsText.classList.toggle("hide", true);
    animalTable.classList.toggle("hide", false);
    const animalsManager = new AnimalsManager(animalTable);
    animalsManager.init();
    let parseData = JSON.parse(response.data);
    parseData.forEach((animalData) => {
      animalsManager.setRowData(
        animalData["idAnimale"],
        animalData["nomeSpecie"],
        animalData["nomeOrdine"],
        animalData["generazione"],
        animalData["sesso"],
        animalData["stato"],
        animalData["eta"],
      );
    });
  } else {
    noAnimalsText.classList.toggle("hide", false);
    animalTable.classList.toggle("hide", true);
  }
});
let shrubsData = {
  parkId: parseInt(parkId),
};
const noShrubsText = document.querySelector(".no-shrubs-text");
const shrubsTable = document.querySelector(".shrubs-table");
FetchUtil.postData("./php/read-shrubs.php", shrubsData).then((response) => {
  if (response.status == "success") {
    noShrubsText.classList.toggle("hide", true);
    shrubsTable.classList.toggle("hide", false);
    const shrubsManager = new ShrubsManager(shrubsTable);
    shrubsManager.init();
    let parseData = JSON.parse(response.data);
    let nShrubs = 0; 
    parseData.forEach((shrubData) => {
      shrubsManager.setRowData("arbusti", shrubData["nome"]);
      nShrubs++;
    });
    shrubsManager.setTotalShrubs(nShrubs);
  } else {
    noShrubsText.classList.toggle("hide", false);
    shrubsTable.classList.toggle("hide", true);
  }
});
let pinesData = {
  parkId: parseInt(parkId),
};
const noPinesText = document.querySelector(".no-pines-text");
const pinesTable = document.querySelector(".pines-table");
FetchUtil.postData("./php/read-pines.php", pinesData).then((response) => {
  if (response.status == "success") {
    noPinesText.classList.toggle("hide", true);
    pinesTable.classList.toggle("hide", false);
    const pinesManager = new PinesManager(pinesTable);
    pinesManager.init();
    let parseData = JSON.parse(response.data);
    let nPines = 0;
    parseData.forEach((pineData) => {
      pinesManager.setRowData("alberi", pineData["nome"]);
      nPines++;
    });
    pinesManager.setTotalPines(nPines);
  } else {
    noPinesText.classList.toggle("hide", false);
    pinesTable.classList.toggle("hide", true);
  }
});
const cubsData = {
  parkId: parkId,
}
const cubsText = document.querySelector(".no-cubs-text");
const cubsTable = document.querySelector(".cubs-table");
FetchUtil.postData("./php/read-cubs.php", cubsData).then((response) => {
  console.log(response);
});
const addRecordBtn = document.querySelector(".add-record-btn");
addRecordBtn.addEventListener("click", () => {
  let dataToSend = new URLSearchParams();
  dataToSend.append("parkId", parkId);
  dataToSend.append("parkName", parkName);
  location.href = "../add-record-page/add-record-page.php?" + dataToSend;
});