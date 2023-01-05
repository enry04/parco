import FetchUtil from "../../common/js/fetch-util.js";

let dataToReceive = new URLSearchParams(window.location.search);
let parkId = dataToReceive.get("parkId");
let parkName = dataToReceive.get("parkName");
const titleText = document.querySelector(".current-park-text");
titleText.classList.toggle("hide", false);
titleText.classList.toggle("active-page", true);
titleText.innerHTML += parkName;
document.querySelector(".logo-container").classList.toggle("hide", true);
// const animalsData = {
//   parkId: parseInt(parkId),
// };
// const noAnimalsText = document.querySelector(".no-animals-text");
// FetchUtil.postData("./php/read-animals.php", animalsData).then((response) => {
//   if (response.status == "success") {
//     noAnimalsText.classList.toggle("hide", true);
//   } else {
//     noAnimalsText.classList.toggle("hide", false);
//   }
// });
// let shrubsData = {
//   parkId: parseInt(parkId),
// };
// const noShrubsText = document.querySelector(".no-shrubs-text");
// FetchUtil.postData("./php/read-shrubs.php", shrubsData).then((response) => {
//   if (response.status == "success") {
//     noShrubsText.classList.toggle("hide", true);
//   } else {
//     noShrubsText.classList.toggle("hide", false);
//   }
// });
// let pinesData = {
//   parkId: parseInt(parkId),
// };
// const noPinesText = document.querySelector(".no-pines-text");
// FetchUtil.postData("./php/read-pines.php", pinesData).then((response) => {
//   if (response.status == "success") {
//     noPinesText.classList.toggle("hide", true);
//   } else {
//     noPinesText.classList.toggle("hide", false);
//   }
// });
const addRecordBtn = document.querySelector(".add-record-btn");
addRecordBtn.addEventListener("click", () => {
  let dataToSend = new URLSearchParams();
  dataToSend.append("parkId", parkId);
  dataToSend.append("parkName", parkName);
  location.href = "../add-record-page/add-record-page.php?" + dataToSend;
});
