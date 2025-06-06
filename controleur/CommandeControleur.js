const { getProduitDuJour } = require('../metier/metierServices/ProduitService');

async function afficherProduitDuJour(req, res) {
  try {
    const produits = await getProduitDuJour();
    res.json(produits);
  } catch (err) {
    res.status(500).json({ message: 'Erreur serveur', error: err.message });
  }
}

module.exports = { afficherProduitDuJour };
