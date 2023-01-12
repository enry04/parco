import FetchUtil from "../../common/js/fetch-util.js";
class ContactManager{
    constructor(parentElement){
        this.rootElement = parentElement;
        this.elements = {};
    }

    init(){
        this.initElements();
        this.initEventListeners();
    }

    initElements(){
        this.elements = {
            nameText: this.rootElement.querySelector(".name-text"),
            emailText: this.rootElement.querySelector(".email-text"),
            messageArea: this.rootElement.querySelector(".message-area"),
            form: this.rootElement.querySelector("form"),
        }
    }

    initEventListeners(){
        this.elements.form.addEventListener("submit", (event) => {
            event.preventDefault();
            const messageData = {
                name: this.elements.nameText.value,
                email: this.elements.emailText.value,
                message: this.elements.messageArea.value,
            }
            FetchUtil.postData("./php/add-message.php", messageData).then((response) => {
                if(response.status == "error"){
                    console.log(response.data);
                }
            });
            this.elements.nameText.value = "";
            this.elements.emailText.value = "";
            this.elements.messageArea.value = "";
        });
    }
}

export default ContactManager;