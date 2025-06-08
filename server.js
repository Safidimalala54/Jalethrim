const express = require('express');
const app = express();
const cors = require('cors');
const commandeRoutes = require('./routes/CommandeRoutes');

const allowedOrigins = [
  'http://localhost:5173'
];

app.use(cors({
  origin: function (origin, callback) {
    if (!origin || allowedOrigins.includes(origin)) {
      callback(null, true);
    } else {
      callback(new Error('Cors non autorisé'));
    }
  },
  credentials: true
}));

app.use(express.json());

app.use('/gondor_chic', commandeRoutes);

app.listen(3000, () => {
  console.log('Le serveur du Gondir Chic est demarré');
});
