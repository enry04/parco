import SelectManager from "./select-manager.js";
import FetchUtil from "../../common/js/fetch-util.js";
import ParksManager from "./parks-manager.js";

const selectElement = document.querySelector("select");
let selectData;

await FetchUtil.postData("./php/read-regions.php", {}).then((response) => {
  if ((response.status = "success")) {
    selectData = JSON.parse(response.data);
  } else {
    console.log(response.status);
  }
});

await selectData.forEach((optionValue) => {
  const selectManager = new SelectManager(selectElement);
  selectManager.setOptionValues(optionValue["id"], optionValue["nome"]);
});

const parksParentElement = document.querySelector(".parks-container");
selectElement.addEventListener("change", (event) => {
  if (event.target.value != 0) {
    ParksManager.reset();
    let data = {
      regionId: event.target.value,
    };
    let parksData;
    FetchUtil.postData("./php/read-parks.php", data).then((response) => {
      if (response.status == "success") {
        parksData = JSON.parse(response.data);
        console.log(parksData);
        parksData.forEach((parkData) => {
          let parksManager = new ParksManager(parksParentElement);
          parksManager.init();
          parksManager.setId(parkData["id"]);
          parksManager.setRegionText(parkData["nome"]);
          parksManager.setImage("../common/" + parkData["immagine"]);
          parksManager.setParkTitle(parkData["nomeParco"]);
          parksManager.setParkDescription(parkData["descrizione"]);
        });
      } else {
        console.log(response.status);
      }
    });
  }else{
    ParksManager.reset();
    ParksManager.removeRegionText();
  }
});
