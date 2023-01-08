import FetchUtil from "../../common/js/fetch-util.js";

class FormManager {
    constructor(parentElement, vegetableFamilies, parkId) {
        this.rootElement = parentElement;
        this.elements = {};
        this.vegetableFamilies = vegetableFamilies;
        this.currentParkId = parkId;
        this.popUp = document.querySelector(".pop-up-container");
    }

    init() {
        this.initElements();
        this.initEventListeners();
    }

    initElements() {
        this.elements = {
            exemplarySelect: this.rootElement.querySelector(".exemplary-select"),
            animalContainer: this.rootElement.querySelector(".animal-container"),
            animalElements: {
                orderText: this.rootElement.querySelector(".order-text"),
                animalspeciesText: this.rootElement.querySelector(".animal-species-text"),
                genderSelect: this.rootElement.querySelector(".gender-select"),
                generationSelect: this.rootElement.querySelector(".generation-select"),
                stateSelect: this.rootElement.querySelector(".state-select"),
                bornDate: this.rootElement.querySelector(".date-input"),
                animalForm: this.rootElement.querySelector(".animal-form"),
            },
            vegetableContainer: this.rootElement.querySelector(".vegetable-container"),
            vegetableElements: {
                familySelect: this.rootElement.querySelector(".family-select"),
                seasonSelect: this.rootElement.querySelector(".season-select"),
                vegetableSpeciesText: this.rootElement.querySelector(".vegetable-species-text"),
                vegetableForm: this.rootElement.querySelector(".vegetable-form"),
            },
        }
        this.addVegetableOptions();
    }

    initEventListeners() {
        this.elements.exemplarySelect.addEventListener("change", (event) => {
            if (event.target.value == 0) {
                this.elements.animalElements.animalForm.classList.toggle("hide", false);
                this.elements.vegetableElements.vegetableForm.classList.toggle("hide", true);
            } else if(event.target.value == 1){
                this.elements.animalElements.animalForm.classList.toggle("hide", true);
                this.elements.vegetableElements.vegetableForm.classList.toggle("hide", false);
            }
        })

        this.elements.animalElements.animalForm.addEventListener("submit", async (event) => {
            event.preventDefault();
            const orderData = {
                order: this.elements.animalElements.orderText.value,
            };
            let orderId = null;
            await FetchUtil.postData("./php/check-animal-order.php", orderData).then(async (response) => {
                if (response.status == "already present") {
                    let parseData = JSON.parse(response.data);
                    orderId = parseData["id"];
                } else {
                    await FetchUtil.postData("./php/add-animal-order.php", orderData).then((response) => {
                        if (response.status == "success") {
                            let parseData = JSON.parse(response.data)
                            orderId = parseData["LAST_INSERT_ID()"];
                        } else {
                            console.log(response.status);
                        }
                    });
                }
            });
            const speciesData = {
                orderId: orderId,
                species: this.elements.animalElements.animalspeciesText.value,
            }
            let speciesId = null;
            await FetchUtil.postData("./php/check-animal-species.php", speciesData).then(async (response) => {
                if(response.status == "already present"){
                    let parseData = JSON.parse(response.data);
                    speciesId = parseData["id"];
                }else{
                    await FetchUtil.postData("./php/add-animal-species.php",speciesData).then((response) => {
                        if(response.status == "success"){
                            let parseData = JSON.parse(response.data);
                            speciesId = parseData["LAST_INSERT_ID()"];
                        }else{
                            console.log(response.status);
                        }
                    });
                }
            });
            let date = new Date(this.elements.animalElements.bornDate.value);
            const animalData = {
                parkId: parseInt(this.currentParkId),
                speciesId: parseInt(speciesId),
                gender: this.elements.animalElements.genderSelect.value,
                generation: this.elements.animalElements.generationSelect.value,
                state: this.elements.animalElements.stateSelect.value,
                age: date.toISOString().slice(0, 19).replace("T", " "),
            }

            FetchUtil.postData("./php/add-animal.php", animalData).then((response) => {
                if(response.status == "error"){
                    console.log(response.data);
                }
            });
            this.elements.exemplarySelect.value = "";
            this.elements.animalElements.animalForm.classList.toggle("hide", true);
            this.popUp.classList.toggle("pause" , false);
            this.popUp.classList.toggle("running", true);
            setTimeout(() =>{
                this.popUp.classList.toggle("pause", true);
                this.popUp.classList.toggle("running", false);
            },5000);
            this.elements.animalElements.animalForm.reset();
        })

        this.elements.vegetableElements.vegetableForm.addEventListener("submit", async (event) => {
            event.preventDefault();
            const speciesData = {
                familyId: this.elements.vegetableElements.familySelect.value,
                species: this.elements.vegetableElements.vegetableSpeciesText.value,
            }
            let speciesId = null;
            await FetchUtil.postData("./php/check-vegetable-species.php", speciesData).then(async (response) => {
                if(response.status == "already present"){
                    let parseData = JSON.parse(response.data);
                    speciesId = parseData["id"];
                }else {
                    await FetchUtil.postData("./php/add-vegetable-species.php", speciesData).then(async (response) => {
                        if(response.status == "success"){
                            let parseData = JSON.parse(response.data);
                            speciesId = parseData["LAST_INSERT_ID()"];
                        }else{
                            console.log(response.data);
                        }
                    });
                }
            });
            const vegetableData = {
                parkId: parseInt(this.currentParkId),
                speciesId: parseInt(speciesId),
                season: this.elements.vegetableElements.seasonSelect.value,
            }
            FetchUtil.postData("./php/add-vegetable.php", vegetableData).then((response) => {
                if(response.status == "error"){
                    console.log(response.data);
                }
            });
            this.elements.exemplarySelect.value = "";
            this.elements.vegetableElements.vegetableForm.classList.toggle("hide", true);
            this.popUp.classList.toggle("pause" , false);
            this.popUp.classList.toggle("running", true);
            setTimeout(() =>{
                this.popUp.classList.toggle("pause", true);
                this.popUp.classList.toggle("running", false);
            },5000);
            this.elements.vegetableElements.vegetableForm.reset();
        })
    }

    addVegetableOptions() {
        this.vegetableFamilies.forEach(currentFamily => {
            let option = document.createElement("option");
            option.value = currentFamily["id"];
            option.textContent = currentFamily["nome"];
            this.elements.vegetableElements.familySelect.appendChild(option);
        });
    }
}

export default FormManager;