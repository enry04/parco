class PinesManager{
    constructor(tableElement){
        this.rootElement = tableElement;
        this.headerValues = ["Famiglia", "Specie"];
        this.tHead = this.rootElement.createTHead();
        this.tBody = this.rootElement.createTBody();
        this.totalText = document.querySelector(".total-pines-text");
    }

    init(){
        this.initElements();
    }

    initElements(){
        let row = this.tHead.insertRow();
        for(let i = 0; i < this.headerValues.length; i++){
            let th = document.createElement("th");
            th.innerHTML = this.headerValues[i];
            row.appendChild(th);
        }
    }
    setRowData(family,species){
        let data = [family, species];
        let row = this.tBody.insertRow();
        for(let i = 0; i < data.length; i++){
            let td = document.createElement("td");
            td.innerHTML = data[i];
            row.appendChild(td);
        }
    }

    setTotalPines(total){
        this.totalText.innerHTML = "Totale: " + total;
    }
}

export default PinesManager;