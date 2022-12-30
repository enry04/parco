class ParksManager{
    constructor(parentElement){
        this.rootElement = parentElement;
        this.currentId;
        this.elements = {};
        const parser = new DOMParser();
        const parkTemplate = '<div class="item-container"><div class="park-image-container"></div><div class="info-container"><h5 class="park-title-text"></h5><h6 class="park-description-text"></h6><input type="button" value="Dettagli" class="details-btn"></div>';
        const templateElement = parser.parseFromString(parkTemplate, "text/html");
        this.template = templateElement.documentElement.querySelector("body > div");
    }

    init(){
        this.initElements();
        this.initEventListeners();
    }

    initElements(){
        this.elements = {
            regionText: this.rootElement.querySelector(".region-text"),
            image: this.template.querySelector(".park-image-container"),
            parkTitle: this.template.querySelector(".park-title-text"),
            parkDescription: this.template.querySelector(".park-description-text"),
            detailsBtn: this.template.querySelector(".details-btn"),
        }
        this.rootElement.appendChild(this.template);
    }

    initEventListeners(){
        this.elements.detailsBtn.addEventListener("click", (event) => {

        });
    }

    setRegionId(id){
        this.currentId = id;
    }

    

    reset(){
        this.rootElement.innerHTML = '';
    }
}

export default ParksManager;