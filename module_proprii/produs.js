class Produs{

    constructor({id, nume, descriere, pret, memorie, culori, TIP_TELEFON, brand, specificatii, resigilare, imagine, data_adaugare}={}) {

        for(let prop in arguments[0]){
            this[prop]=arguments[0][prop]
        }

    }

}