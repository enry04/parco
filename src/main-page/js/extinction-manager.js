class ExtinctionManager {
    constructor(tableElement) {
        this.rootElement = tableElement;
        this.headerValues = ["Ordine di appartenenza", "Specie", "Esemplari malati", "Totale esemplari", "Percentuale malati"];
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
    setRowData(order, species, nSicks, nTot, percentage) {
        let perc = Math.trunc(percentage) + "%";
        let data = [order, species, nSicks, nTot, perc];
        let row = this.tBody.insertRow();
        for (let i = 0; i < data.length; i++) {
            let td = document.createElement("td");
            td.innerHTML = data[i];
            row.appendChild(td);
        }
    }
}

export default ExtinctionManager;