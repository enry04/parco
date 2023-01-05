import FormManager from "./form-manager.js";
import FetchUtil from "../../common/js/fetch-util.js";

let dataToReceive = new URLSearchParams(window.location.search);
let parkId = dataToReceive.get("parkId");
let parkName = dataToReceive.get("parkName");

const backElement = document.querySelector(".back-container");
backElement.addEventListener("click", () => {
  let dataToSend = new URLSearchParams();
  dataToSend.append("parkId", parkId);
  dataToSend.append("parkName", parkName);
  location.href = "../park-page/park-page.php?" + dataToSend;
});

let selectData;

await FetchUtil.postData("./php/read-families.php", {}).then((response) => {
  if (response.status == "success") {
    selectData = JSON.parse(response.data);
  } else {
    console.log(response.status);
  }
});

const parentElement = document.querySelector(".main-container");
const formManager = new FormManager(parentElement, selectData, parkId);
formManager.init();
