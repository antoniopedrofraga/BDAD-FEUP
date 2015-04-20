.mode columns
.headers on
.nullvalue NULL
PRAGMA FOREIGN_KEYS=ON;


DROP TABLE IF EXISTS Resultado;
DROP TABLE IF EXISTS Prova;
DROP TABLE IF EXISTS Competicao;
DROP TABLE IF EXISTS Piscina;
DROP TABLE IF EXISTS Treinador;
DROP TABLE IF EXISTS Atleta;
DROP TABLE IF EXISTS Clube;
DROP TABLE IF EXISTS Localidade;
DROP TABLE IF EXISTS Escalao;
DROP TABLE IF EXISTS Estilo;
DROP TABLE IF EXISTS Associacao;
DROP TABLE IF EXISTS Pessoa;



CREATE TABLE Pessoa
(
id INTEGER PRIMARY KEY,
nome TEXT NOT NULL,
morada TEXT NOT NULL,
genero TEXT NOT NULL,
nacionalidade TEXT NOT NULL,
data_nascimento DATE
);


CREATE TABLE Associacao
(
regiao TEXT NOT NULL PRIMARY KEY
);


CREATE TABLE Estilo
(
designacao TEXT NOT NULL PRIMARY KEY
);


CREATE TABLE Escalao
(
designacao TEXT NOT NULL PRIMARY KEY,
idade_min INTEGER,
idade_max INTEGER
);


CREATE TABLE Localidade
(
nome TEXT NOT NULL,
codigo_postal INTEGER PRIMARY KEY
);


CREATE TABLE Clube
(
nome TEXT PRIMARY KEY,
regiao TEXT NOT NULL REFERENCES Associacao(regiao),
codigo_postal INTEGER REFERENCES Localidade(codigo_postal)
);


CREATE TABLE Atleta
(
id INTEGER REFERENCES Pessoa(id),
numero INTEGER PRIMARY KEY,
altura INTEGER,
peso INTEGER,
nome TEXT NOT NULL REFERENCES Clube(nome),
designacao TEXT NOT NULL REFERENCES Escalao(designacao)
);

CREATE TABLE Treinador
(
id INTEGER REFERENCES Pessoa(id),
numero INTEGER PRIMARY KEY,
nivel INTEGER,
nome TEXT NOT NULL REFERENCES Clube(nome)
);



CREATE TABLE Piscina
(
id TEXT NOT NULL PRIMARY KEY,
comprimento INTEGER,
codigo_postal TEXT REFERENCES Localidade(codigo_postal) NOT NULL,
regiao TEXT NOT NULL REFERENCES Associacao(regiao)
);


CREATE TABLE Competicao
(
nome TEXT PRIMARY KEY,
data DATE,
regiao TEXT NOT NULL REFERENCES Associacao(regiao),
id TEXT NOT NULL REFERENCES Piscina(id)
);


CREATE TABLE Prova
(
id INTEGER PRIMARY KEY,
data DATE,
distancia INTEGER,
nome TEXT NOT NULL REFERENCES Competicao(nome),
designacao TEXT NOT NULL REFERENCES Estilo(designacao)
);


CREATE TABLE Resultado
(
resultado_pk INTEGER PRIMARY KEY,
numero INTEGER REFERENCES Atleta(numero),
id INTEGER REFERENCES Prova(id),
posicao INTEGER,
tempo INTEGER
);


