const {
  rechercherProduitDuJour,
} = require("../metier/metierServices/ProduitsManager");
const {
  rechercherClientParPseudo,
} = require("../metier/metierServices/ClientsManager");

class SessionPasserCde {
  constructor() {
    this.traiterAccesApplication = this.traiterAccesApplication.bind(this);
    this.traiterIdentification = this.traiterIdentification.bind(this);
  }

  async traiterAccesApplication(req, res) {
    try {
      const produit = await rechercherProduitDuJour();

      if (!produit || produit.length === 0) {
        return res.status(404).json({
          message: "Aucun produit du jour trouvé",
        });
      }

      res.json({
        ecranCourant: "PageAcceuil",
        produit: produit[0],
      });
    } catch (error) {
      console.error("Erreur traiterAccesApplication:", error);
      res.status(500).json({
        message: "Erreur lors de la récupération du produit du jour",
        error: error.message,
      });
    }
  }

  async traiterIdentification(req, res) {
    try {
      const { pseudo, motDePasse } = req.body;

      if (!pseudo || !motDePasse) {
        return res.status(400).json({
          message: "Pseudo et mot de passe requis",
        });
      }

      const client = await rechercherClientParPseudo(pseudo, motDePasse);

      if (!client) {
        return res.json({
          ecranCourant: "EcranErreurAuthentification",
        });
      }

      const produit = await rechercherProduitDuJour();

      res.json({
        ecranCourant: "PageAcceuilPerso",
        client: client,
        produit: produit[0],
      });
    } catch (error) {
      console.error("Erreur traiterIdentification:", error);
      res.status(500).json({
        message: "Erreur lors de l'identification",
        error: error.message,
      });
    }
  }
}

module.exports = SessionPasserCde;
