# parco

inserire 20 regioni italiane
inserire i parchi per ogni regione
in ogni parco visualizzare fauna e flora
singolo animale -> ordine di appartenenza (lista predefinita [rettili, mammiferi, uccelli...]), specie(lista predefinita)[scoiattolo, orso, vipera, volpe, falco, aquila...], maschio o femminse è cucciolo o adulto, a, se è in buona salute
La flora viene distinta in alberi (lista predefinita [(quercia, faggio, acacia...]), arbusti(lista predefinita [(lavanda, rosmarino, rododendro]), piante erbacee(lista predefinita [(fragola di bosco, margherita, primula])
Ogni specie vegetale -> Stagione di fioritura e altre caratteristiche, specie  
gestire estinzione animali -> Se tot animali della stessa specie sono malati allora la specie è a rischio di estinzione

**L' utente ha la possibilità di:**

1. Visualizzare l’elenco di tutti gli esemplari di fauna, suddivisi per specie, presenti nei vari parchi.
2. Visualizzare tutti gli esemplari a rischio di estinzione.
3. Calcolare e visualizzare il numero di nascite di un certo esemplare nell’arco di un anno di monitoraggio.
4. Calcolare e visualizzare il numero totale di diverse specie di arbusti presenti nei vari parchi della regione.
5. Visualizzare quante specie diverse di pino sono presenti in ciascun parco.
6. Calcolare il numero medio dei cuccioli di ciascuna specie presenti in tutti i parchi della regione.
7. Visualizzare l’esemplare più anziano di ogni specie presente in un determinato parco.

**DATABASE:**

1. tRegione -> id, nome;
2. tParco -> id, nome, idRegione;
3. tOrdineAppartenenzaFauna -> id, nome;
4. tSpecieFauna -> id, nome, idOrdineAppartenenzaFauna, stato(è a rischio estinzione?);
5. tAnimale -> id, idParco, idSpecieFauna, generazione(Adulto/cucciolo), sesso, stato(è in salute);
6. tFamigliaFlora -> id, nome;
7. tSpecieFlora -> id, nome, idFamigliaFlora;
8. tVegetale -> id, idParco, idSpecieFlora, stagioneFioritura;

**palette:**

Dal più scuro al più chiaro

#132a13
#31572c
#4f772d
#90a955
#ecf39e

**form**

fauna/flora (select)

Fauna:
OrdineAppartenenza (textBar);
specie (textBar);
sesso (Select);
generazione (select);
stato(in salute)(select);
età(number);

Flora:
Famiglia(textBar);
Specie (textBar);
stagioneFioritura(select);
