class OldersManager {
  constructor(tableElement) {
    this.rootElement = tableElement;
    this.headerValues = ["Specie", "Ordine di appartenenza", "età"];
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
  setRowData(species, order, birth) {
    // let date = new Date(age);
    // // let currentYear = new Date().getFullYear();
    // // let currentMonth = new Date().getMonth();
    // // let currentDay = new Date().getDay();
    // let today = new Date();
    // let olderAge = today.getFullYear() - date.getFullYear();;
    // let monthAge = today.getMonth() - date.getMonth();
    // if(monthAge < 0 || (monthAge === 0 && today.getDate() < data.getDate())){
    //     olderAge--;
    // }
    // console.log(olderAge);
    // if(currentYear - date.getFullYear() > 0){
    //     olderAge = currentYear - date.getFullYear() + " anni";
    // }else if(currentMonth - date.getMonth() > 0){
    //     olderAge = currentMonth - date.getMonth() + " mesi";
    // }else {
    //     olderAge = currentDay - date.getDay() + " giorni";
    // }
    // let millisecondsBetweenDOBAnd1970 = Date.parse(birth);
    // let millisecondsBetweenNowAnd1970 = Date.now();
    // let ageInMilliseconds = millisecondsBetweenNowAnd1970 - millisecondsBetweenDOBAnd1970;
    // let milliseconds = ageInMilliseconds;
    // let second = 1000;
    // let minute = second * 60;
    // let hour = minute * 60;
    // let day = hour * 24;
    // let month = day * 30;
    // let year = day * 365;
    // let years = Math.round(milliseconds / year);
    // let months = years * 12;
    // let days = years * 365;
    // let hours = Math.round(milliseconds/hour);
    // let seconds = Math.round(milliseconds/second);
    // // let age = years + " anni, " + months + " mesi e " + days + "giorni";
    // console.log(years,months,days,hours,seconds);
    // let age;
    // if(years > 0){
    //     age = years + " anni";
    // }else if(months > 0){
    //     age = months + " mesi";
    // }else if(days > 0){
    //     age = days + " giorni";
    // }else if(hours > 0){
    //     age = hours + " ore";
    // }else{
    //     age = seconds + " secondi";
    // }
    // let years = dob.getYear() - today.getYear();
    // let months = dob.getMonth() - today.getMonth();
    // let days = dob.getDate() - today.getDate();
    // let tempAge = (years * 365) + (months * 31) + days;
    // let ageYears = tempAge / years;
    let today = new Date();
    let dob = new Date(birth);
    let yearAge = today.getFullYear() - dob.getFullYear();
    let fullAge = "";
    let monthAge;
    if (yearAge === 0) {
      monthAge = today.getMonth() - dob.getMonth();
      fullAge = monthAge + "mesi";
    } else {
      debugger;
      let currentM = today.getMonth() + 1;
      let monthDob = dob.getMonth() + 1;
      let ageMonth = currentM + 12 - monthDob;
      if (ageMonth < 12) {
        yearAge--;
      }
      fullAge = yearAge + " anni";
    }
    console.log(yearAge);
    let data = [species, order, fullAge];
    let row = this.tBody.insertRow();
    for (let i = 0; i < data.length; i++) {
      let td = document.createElement("td");
      td.innerHTML = data[i];
      row.appendChild(td);
    }
  }
}

export default OldersManager;
