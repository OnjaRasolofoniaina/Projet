CREATE TABLE IF NOT EXISTS produit (
    id    SERIAL PRIMARY KEY,
    nom   VARCHAR(100) NOT NULL,
    prix  NUMERIC(10, 2) NOT NULL
);

INSERT INTO produit (nom, prix) VALUES
    ('Objet 1', 1000),
    ('Objet 2', 2500),
    ('Objet 3', 1200),
    ('Objet 4', 3000);
