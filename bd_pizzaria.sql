CREATE DATABASE pizzaria;

use pizzaria;

CREATE TABLE bordas
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(100)
);

CREATE TABLE massas
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(100)
);

CREATE TABLE sabores 
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE pizzas
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    borda_id INT NOT NULL,
    massa_id INT NOT NULL,
    FOREIGN KEY (borda_id) REFERENCES bordas(id),
    FOREIGN KEY (massa_id) REFERENCES massas(id)
);

CREATE TABLE pizza_sabor 
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pizza_id INT NOT NULL,
    sabor_id INT NOT NULL,
    FOREIGN KEY (pizza_id) REFERENCES pizzas(id), 
    FOREIGN KEY (sabor_id) REFERENCES sabores(id)
);

CREATE TABLE status
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(100)
);

CREATE TABLE pedidos
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pizza_id INT NOT NULL,
    status_id INT NOT NULL,
    FOREIGN KEY (pizza_id) REFERENCES pizzas(id), 
    FOREIGN KEY (status_id) REFERENCES status(id)
);


-- inserindo os dados necessarios
INSERT INTO status (tipo) VALUES ("Em produção"), ("Em entrega"), ("Concluído");
INSERT INTO massas (tipo) VALUES ("Massa comum"), ("Massa integral"), ("Massa temperada");
INSERT INTO bordas (tipo) VALUES ("Cheddar"), ("Catupiry");
INSERT INTO sabores (nome) VALUES ("4 Queijos"), ("Frango com Catupiry"), ("Calabresa"), ("Lombinho"), ("Filé com Cheddar"), ("Portuguesa"), ("Margherita");
