CREATE TABLE IF NOT EXISTS medecin(
nom VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS malade(
nom VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS consultation(
id INTEGER PRIMARY KEY AUTOINCREMENT,
date DATE,
prix VARCHAR(255),
nom_medecin ,
FOREIGN KEY (nom_medecin) REFERENCES medecin(nom),
nom_malade,
FOREIGN KEY (nom_malade) REFERENCES malade(nom)
);

CREATE TABLE IF NOT EXISTS symptome(
nom VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS consultation_symptome(
FOREIGN KEY (nom_symptome) REFERENCES symptome(nom)
)