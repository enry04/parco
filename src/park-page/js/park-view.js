let dataToReceive = new URLSearchParams(window.location.search);
let parkId = dataToReceive.get("currentId");
const addRecordBtn = document.querySelector(".add-record-btn");
addRecordBtn.addEventListener("click", () => {
    let dataToSend = new URLSearchParams();
    dataToSend.append("parkId",parkId);
    location.href = "../add-record-page/add-record-page.php?" + dataToSend;
});