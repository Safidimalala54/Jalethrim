const express = require('express');
const router = express.Router();
const { afficherProduitDuJour } = require('../controleur/CommandeControleur');

router.get('/produit-du-jour', afficherProduitDuJour);

module.exports = router;
