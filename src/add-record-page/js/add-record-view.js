import FormManager from "./form-manager.js";
import FetchUtil from "../../common/js/fetch-util.js";

const backElement = document.querySelector(".back-container");
backElement.addEventListener("click", () => {
    location.href = "../parks-page/parks-page.php";
});

let selectData;

await FetchUtil.postData("./php/read-families.php", {}).then((response) => {
    if(response.status == "success"){
        selectData = JSON.parse(response.data);
    }else{
        console.log(response.status);
    }
});

const parentElement = document.querySelector(".main-container");
const formManager = new FormManager(parentElement, selectData);
formManager.init(); 