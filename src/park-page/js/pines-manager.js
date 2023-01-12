class PinesManager {
    constructor(tableElement) {
        this.rootElement = tableElement;
        this.headerValues = ["Famiglia", "Specie", "Quantità presente"];
        this.tHead = this.rootElement.createTHead();
        this.tBody = this.rootElement.createTBody();
        this.totalText = document.querySelector(".total-pines-text");
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
    setRowData(family, species, nPines) {
        let data = [family, species, nPines];
        let row = this.tBody.insertRow();
        for (let i = 0; i < data.length; i++) {
            let td = document.createElement("td");
            td.innerHTML = data[i];
            row.appendChild(td);
        }
    }

    setTotalPines(total) {
        this.totalText.innerHTML = "Quantità totale di pini: " + total;
    }
}

export default PinesManager;