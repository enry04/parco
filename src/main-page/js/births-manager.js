import AgeUtil from "../../common/js/age-util.js";

class BirthsManager {
    constructor(tableElement) {
        this.rootElement = tableElement;
        this.headerValues = ["Codice animale", "Parco in cui vive", "Ordine di appartenenza", "Specie", "Sesso", "Stato", "Età"];
        this.tHead = this.rootElement.createTHead();
        this.tBody = this.rootElement.createTBody();
    }

    init() {
        this.initElements();
    }

    initElements() {
        let row = this.tHead.insertRow();
        for (let i = 0; i < this.headerValues.length; i++) {
            let th = document.createElement("th");
            th.innerHTML = this.headerValues[i];
            row.appendChild(th);
        }
    }
    setRowData(id, park, order, species, gender, state, birth) {

        let data = [id, park, order, species, gender, state, AgeUtil.getAge(birth)];
        let row = this.tBody.insertRow();
        for (let i = 0; i < data.length; i++) {
            let td = document.createElement("td");
            td.innerHTML = data[i];
            row.appendChild(td);
        }
    }
}

export default BirthsManager;