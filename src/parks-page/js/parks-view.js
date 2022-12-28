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
    if(event.target.value != 0){
        let parksManager = new ParksManager(parksParentElement, event.target.value);
        parksManager.init();
    }
});
