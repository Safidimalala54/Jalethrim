class Produit {
  constructor(id, reference, libelle, prix, estDuJour, quantiteEnStock) {
    this.id = id;
    this.reference = reference;
    this.libelle = libelle;
    this.prix = prix;
    this.estDuJour = estDuJour;
    this.quantiteEnStock = quantiteEnStock;
  }
}


module.exports = Produit;
