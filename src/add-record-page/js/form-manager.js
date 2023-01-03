import FetchUtil from "../../common/js/fetch-util.js";

class FormManager {
    constructor(parentElement, vegetableFamilies) {
        this.rootElement = parentElement;
        this.elements = {};
        this.vegetableFamilies = vegetableFamilies;
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
                ageNumber: this.rootElement.querySelector(".age-number"),
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
            } else {
                this.elements.animalElements.animalForm.classList.toggle("hide", true);
                this.elements.vegetableElements.vegetableForm.classList.toggle("hide", false);
            }
        })

        this.elements.animalElements.animalForm.addEventListener("submit", (event) => {
            event.preventDefault();
            let data = {
                order: this.elements.animalElements.orderText.value,
                species: this.elements.animalElements.animalspeciesText.value,
                gender: this.elements.animalElements.genderSelect.value,
                generation: this.elements.animalElements.generationSelect.value,
                state: this.elements.animalElements.stateSelect.value,
                age: this.elements.animalElements.ageNumber.value,
            }

            let orderData = {
                order: data.order,
            };
            FetchUtil.postData("./php/check-animal-order.php", orderData).then((response) => {
                if (response.status == "success") {
                    FetchUtil.postData("./php/add-animal-order.php", orderData).then((response) => {
                        if (response.status != "success") {
                            console.log(response.status);
                        }
                    })
                } else {
                    console.log(response.status);
                }
            });
            let speciesData = {
                species: data.species,
                order: data.order,
            }
            FetchUtil.postData("./php/check-animal-species.php", speciesData).then((response) => {
                if (response.status == "success") {
                    FetchUtil.postData("./php/add-animal-species.php", speciesData).then((response) => {
                        if (response.status != "success") {
                            console.log(response.status);
                        }
                    })
                } else {
                    console.log(response.status);
                }
            })

            // FetchUtil.postData("../php/add-animal.php", data).then((response) => {
            //     if (response.status == "success") {
            //         console.log(response.data);
            //     } else {
            //         console.log(response.status);
            //     }
            // });
        })

        this.elements.vegetableElements.vegetableForm.addEventListener("submit", (event) => {
            event.preventDefault();
            let data = {
                family: this.elements.vegetableElements.familySelect.value,
                season: this.elements.vegetableElements.seasonSelect.value,
                species: this.elements.vegetableElements.vegetableSpeciesText.value
            }
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