import ContactManager from "./contact-manager.js";

const parentElement = document.querySelector(".main-container");
const contactManager = new ContactManager(parentElement);
contactManager.init();