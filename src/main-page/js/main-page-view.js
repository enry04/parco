import SliderManager from "./slider-manager.js";

const slideImagesParent = document.querySelector(".slide-container");
const sliderManager = new SliderManager(slideImagesParent);
sliderManager.init();