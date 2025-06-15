const pool = require("../../config/db");
const Produit = require("../modele/Produit");

async function rechercheProduitDuJour() {
  const res = await pool.query("SELECT * FROM produit WHERE estDuJour = TRUE");
  return res.rows.map(
    (p) =>
      new Produit(
        p.id,
        p.reference,
        p.libelle,
        p.prix,
        p.estdujour,
        p.quantiteenstock
      )
  );
}

module.exports = { rechercheProduitDuJour };
