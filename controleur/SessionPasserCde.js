const { getProduitDuJour } = require("../metier/metierServices/ProduitService");
const {
  rechercherClientParPseudo,
} = require("../metier/metierServices/ClientService");

class SessionPasserCde {
  constructor() {
    this.ecranCourant = null;
    this.leProduitCourant = null;
    this.leClientIdentifie = null;
    this.afficherProduitDuJour = this.afficherProduitDuJour.bind(this);
    this.traiterIdentification = this.traiterIdentification.bind(this);
  }

  async traiterAccesApplication() {
    this.ecranCourant = "EcranProduitDuJour";
    this.leProduitCourant = await getProduitDuJour();
    return {
      ecranCourant: this.ecranCourant,
      produit: this.leProduitCourant,
    };
  }

  async traiterIdentificationLogic(pseudo, motDePasse) {
    const client = await rechercherClientParPseudo(pseudo, motDePasse);
    if (client) {
      this.leClientIdentifie = client;
      this.ecranCourant = "EcranAccueilClient";
      return {
        ecranCourant: this.ecranCourant,
        client: this.leClientIdentifie,
        produit: this.leProduitCourant,
      };
    } else {
      this.ecranCourant = "EcranErreurAuthentification";
      return {
        ecranCourant: this.ecranCourant,
      };
    }
  }

  async afficherProduitDuJour(req, res) {
    try {
      const resultat = await this.traiterAccesApplication();
      res.json(resultat);
    } catch (err) {
      res.status(500).json({ message: "Erreur serveur", error: err.message });
    }
  }

  async traiterIdentification(req, res) {
    const { pseudo, motDePasse } = req.body;
    try {
      const resultat = await this.traiterIdentificationLogic(
        pseudo,
        motDePasse
      );
      res.json(resultat);
    } catch (err) {
      res.status(500).json({ message: "Erreur serveur", error: err.message });
    }
  }
}

module.exports = SessionPasserCde;
