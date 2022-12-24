class SliderManager {

    constructor(parentElement) {
        this.rootElement = parentElement;
        console.log(this.rootElement);
        this.elements = {};
        this.currentActive = 1;
    }

    init(){
        this.initElements();
        this.initEventListeners();
    }

    initElements(){
     this.elements = {
        images: this.rootElement.querySelectorAll(".slide-image-container"),
     }
     this.setDefaultActive();
    }

    initEventListeners(){
        
    }

    setDefaultActive(){
        for(let i = 1; i < this.elements.images.length + 1; i++){
            if(this.elements.images[i] == this.currentActive){
                this.elements.images[i].classList.toggle("show", false);
                this.elements.images[i].classList.toggle("hide", true);
            }else {
                this.elements.images[i].classList.toggle("show",true);
                this.elements.images[i].classList.toggle("hide",false);
            }
        }
    }

}

export default SliderManager;