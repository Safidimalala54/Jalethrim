const pool = require("../../config/db");
const Client = require("../modele/Client");

async function rechercherClientParPseudo(pseudo, motDePasse) {
  const res = await pool.query(
    "SELECT * FROM client WHERE pseudo = $1 AND motdepasse = $2",
    [pseudo, motDePasse]
  );

  if (res.rows.length === 0) {
    return null;
  }
  const c = res.rows[0];
  return new Client(c.id, c.pseudo, c.motdepasse, c.nom, c.prenom);
}
module.exports = { rechercherClientParPseudo };
