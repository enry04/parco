import SliderManager from "./slider-manager.js";
import CurrentYearCubsManager from "./current-year-cubs-manager.js";

const slideImagesParent = document.querySelector(".slide-container");
const sliderManager = new SliderManager(slideImagesParent);
sliderManager.init();

