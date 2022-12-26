import SelectManager from "./select-manager.js";

const parentElement = document.querySelector('.select-container');
const selectManager = new SelectManager(parentElement);
selectManager.init();