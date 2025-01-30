CREATE TABLE IF NOT EXISTS medecin(
id INTEGER PRIMARY KEY AUTOINCREMENT,
nom VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS malade(
id INTEGER PRIMARY KEY AUTOINCREMENT,
nom VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS consultation(
id INTEGER PRIMARY KEY AUTOINCREMENT,
date DATE,
prix SMALLINT,
id_medecin INTEGER,
FOREIGN KEY (id_medecin) REFERENCES medecin(id),
id_malade INTEGER,
FOREIGN KEY (id_malade) REFERENCES malade(id)
);

CREATE TABLE IF NOT EXISTS symptome(
id INTEGER PRIMARY KEY AUTOINCREMENT,
nom VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS consultation_symptome(
id_symptome INTEGER,
id_consultation INTEGER,
PRIMARY KEY (id_symptome, id_consultation),
FOREIGN KEY (id_symptome) REFERENCES symptome(id),
FOREIGN KEY (id_consultation) REFERENCES consultation(id)
);

CREATE TABLE IF NOT EXISTS maladie(
id INTEGER PRIMARY KEY AUTOINCREMENT,
nom VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS symptome_maladie(
id_symptome INTEGER,
id_maladie INTEGER,
PRIMARY KEY (id_symptome, id_maladie),
FOREIGN KEY (id_symptome) REFERENCES symptome(id),
FOREIGN KEY (id_maladie) REFERENCES maladie(id)
);

CREATE TABLE IF NOT EXISTS consultation_maladie(
id_consultation INTEGER,
id_maladie INTEGER,
PRIMARY KEY (id_consultation, id_maladie),
FOREIGN KEY (id_consultation) REFERENCES symptome(id),
FOREIGN KEY (id_maladie) REFERENCES consultation(id)
);