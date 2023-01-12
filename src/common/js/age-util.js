class AgeUtil {
    static getAge(birth) {
        let today = new Date();
        let birthDate = new Date(birth);
        let yearAge = today.getFullYear() - birthDate.getFullYear();
        let months = today.getMonth() - birthDate.getMonth();
        let age;
        if (months < 0 || (months === 0 && today.getDate() < birthDate.getDate())) {
            yearAge--;
        }
        if (yearAge > 0) {
            if (yearAge === 1) {
                age = yearAge + " anno";
            } else {
                age = yearAge + " anni";
            }

        } else {
            let birthMonth = birthDate.getMonth() + 13;
            let currentMonth = today.getMonth() + 1;
            let monthAge = (birthMonth - currentMonth) - 12;
            if (monthAge === 1) {
                age = monthAge + " mese";
            } else {
                age = monthAge + " mesi";
            }
            if (monthAge === 0) {
                let daysAge = today.getDate() - birthDate.getDate();
                if (daysAge === 0) {
                    age = "è nato oggi!"
                } else if (daysAge === 1) {
                    age = daysAge + " giorno";
                } else {
                    age = daysAge + " giorni";
                }
            }
        }
        return age;
    }
}

export default AgeUtil;