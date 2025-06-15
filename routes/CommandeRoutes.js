const express = require("express");
const router = express.Router();

const SessionPasserCde = require("../controleur/SessionPasserCde");

const sessionPasserCde = new SessionPasserCde();

router.get("/produit-du-jour", sessionPasserCde.traiterAccesApplication);
router.post("/identifier", sessionPasserCde.traiterIdentification);

module.exports = router;
