.mode columns
.headers on
.nullvalue NULL

--Inserir alguns exemplos de pessoas

INSERT INTO Pessoa VALUES(1,'Pedro Fraga', 'Rua da FEUP n 23', 'masculino', 'Portuguesa', '95-08-03'); --Treinador
INSERT INTO Pessoa VALUES(2,'Filipa Barroso', 'Avenida dos Aliados n 125', 'feminino', 'Portuguesa','05-01-01'); --Treinador
INSERT INTO Pessoa VALUES(3,'Francisco Rodrigues', 'Rua do Exemplo n 31', 'masculino', 'Portuguesa','96-05-03'); --Atleta
INSERT INTO Pessoa VALUES(4,'José Cordeiro', 'Rua do Carmo n 181', 'masculino', 'Portuguesa','98-03-01');	--Atleta
INSERT INTO Pessoa VALUES(5,'Susana Manuel', 'Rua das Flores n 11', 'masculino', 'Portuguesa','99-04-23'); --Atleta
INSERT INTO Pessoa VALUES(6,'Sonia Rodrigues', 'Rua do Cantinho n 12', 'feminino', 'Portuguesa','00-12-21'); --Atleta
INSERT INTO Pessoa VALUES(7,'Ana Maia', 'Rua da Fonte n 15', 'feminino', 'Portuguesa','01-04-23'); --Atleta
INSERT INTO Pessoa VALUES(8,'Andre Esteves', 'Rua de Portugal n 191', 'masculino', 'Portuguesa','97-03-15');	--Atleta
INSERT INTO Pessoa VALUES(9,'Marta Bateira', 'Rua do Carmo n 213', 'feminino', 'Portuguesa','98-01-25');	--Atleta
INSERT INTO Pessoa VALUES(10,'Joaquim Silva', 'Rua das Barraquinhas n 15', 'masculino', 'Portuguesa','99-02-27'); --Atleta

--Inserir exemplos de Associacoes

INSERT INTO Associacao VALUES('Braganca');
INSERT INTO Associacao VALUES('Porto');
INSERT INTO Associacao VALUES('Vila Real');
INSERT INTO Associacao VALUES('Lisboa');
INSERT INTO Associacao VALUES('Madeira');
INSERT INTO Associacao VALUES('Algarve');
INSERT INTO Associacao VALUES('Coimbra');

--Inserir exemplos de Estilos

INSERT INTO Estilo VALUES('Brucos');
INSERT INTO Estilo VALUES('Mariposa');
INSERT INTO Estilo VALUES('Costas');
INSERT INTO Estilo VALUES('Crawl');

--Inserir exemplos de escaloes

INSERT INTO Escalao VALUES('Iniciados',6,10);
INSERT INTO Escalao VALUES('Infantis',11,12);
INSERT INTO Escalao VALUES('Cadete',13,15);
INSERT INTO Escalao VALUES('Junior',16,18);
INSERT INTO Escalao VALUES('Senior',19,56);

--Inserir localidades

INSERT INTO Localidade VALUES('Matosinhos',4450);
INSERT INTO Localidade VALUES('Coimbra',3020);
INSERT INTO Localidade VALUES('Mirandela',5370);
INSERT INTO Localidade VALUES('Lousada',4620);
INSERT INTO Localidade VALUES('Vila Real',5000);
INSERT INTO Localidade VALUES('Funchal',9004);
INSERT INTO Localidade VALUES('Faro',8005);
INSERT INTO Localidade VALUES('Sintra',2706);


--Inserir exemplos de clubes

INSERT INTO Clube VALUES('Foca Natacao','Porto',4450);
INSERT INTO Clube VALUES('Academica de Coimbra','Coimbra',3020);
INSERT INTO Clube VALUES('Grupo Desportivo Sao Roque','Madeira', 9004);
INSERT INTO Clube VALUES('CCR Santa Casa','Porto', 4620);
INSERT INTO Clube VALUES('SC Mirandela','Braganca',5370);
INSERT INTO Clube VALUES('GC Vila Real', 'Vila Real',5000);
INSERT INTO Clube VALUES('Natacao Sintra', 'Lisboa',2706);
INSERT INTO Clube VALUES('Faro SC', 'Algarve' ,8005);


--Inserir alguns atletas

INSERT INTO Atleta VALUES(3,1000, 151, 50, 'GC Vila Real','Senior');  --Mais tarde iremos atualizar o escalao automaticamente
INSERT INTO Atleta VALUES(4,1001, 155, 53, 'Foca Natacao', 'Junior');
INSERT INTO Atleta VALUES(5,1002, 149, 48, 'Academica de Coimbra', 'Junior');
INSERT INTO Atleta VALUES(6,1003, 160, 58, 'Natacao Sintra', 'Cadete');
INSERT INTO Atleta VALUES(7,1004, 171, 60, 'CCR Santa Casa', 'Cadete');
INSERT INTO Atleta VALUES(8,1005, 180, 65, 'SC Mirandela', 'Cadete');
INSERT INTO Atleta VALUES(9,1006, 182, 65, 'Faro SC', 'Junior');
INSERT INTO Atleta VALUES(10,1007, 161, 50, 'Grupo Desportivo Sao Roque', 'Cadete');


--Inserir alguns Treinadores

INSERT INTO Treinador VALUES(1,2001,3,'SC Mirandela');
INSERT INTO Treinador VALUES(2,2002,2,'CCR Santa Casa');

--Inserir Piscinas

INSERT INTO Piscina VALUES('LX01',50,'Sintra','Lisboa');
INSERT INTO Piscina VALUES('MDL01',45,'Mirandela','Braganca');
INSERT INTO Piscina VALUES('CMB',47,'Coimbra','Coimbra');
INSERT INTO Piscina VALUES('ALG',49,'Faro','Algarve');
INSERT INTO Piscina VALUES('MTS',50,'Matosinhos','Porto');
INSERT INTO Piscina VALUES('MDR',50,'Funchal','Funchal');


--Inserir Competicoes

INSERT INTO Competicao VALUES('Campeonato Nacional','15-12-01','Porto', 'MTS');
INSERT INTO Competicao VALUES('Torneio de Sintra','15-06-24','Sintra', 'LX01');
INSERT INTO Competicao VALUES('Open Internacional da Madeira','15-08-03','Madeira', 'MDR');
INSERT INTO Competicao VALUES('Torneio de Faro','15-06-15','Faro', 'ALG');
INSERT INTO Competicao VALUES('Torneio de Mirandela','15-04-19','Mirandela', 'MDL01');
INSERT INTO Competicao VALUES('Coimbra Open','15-05-21','Coimbra', 'CMB');

--Inserir Provas

INSERT INTO Prova VALUES(1,'15-12-01',100, 'Campeonato Nacional', 'Brucos');
INSERT INTO Prova VALUES(2,'15-12-01',50, 'Campeonato Nacional', 'Mariposa');
INSERT INTO Prova VALUES(3,'15-12-02',100, 'Campeonato Nacional', 'Costas');
INSERT INTO Prova VALUES(4,'15-12-02',50, 'Campeonato Nacional', 'Crawl');
INSERT INTO Prova VALUES(5,'16-01-05',50, 'Campeonato Nacional', 'Brucos');
INSERT INTO Prova VALUES(6,'16-01-06',100, 'Campeonato Nacional', 'Mariposa');
INSERT INTO Prova VALUES(7,'16-01-05',50, 'Campeonato Nacional', 'Costas');
INSERT INTO Prova VALUES(8,'16-01-06',100, 'Campeonato Nacional', 'Crawl');
INSERT INTO Prova VALUES(9,'15-06-24',50, 'Torneio de Sintra', 'Crawl');
INSERT INTO Prova VALUES(10,'15-06-24',100, 'Torneio de Sintra', 'Crawl');
INSERT INTO Prova VALUES(11,'15-08-03',100, 'Open Internacional da Madeira', 'Mariposa');
INSERT INTO Prova VALUES(12,'15-06-15',100, 'Torneio de Faro', 'Brucos');
INSERT INTO Prova VALUES(13,'15-06-16',100, 'Torneio de Faro', 'Mariposa');
INSERT INTO Prova VALUES(14,'15-04-19',50, 'Torneio de Mirandela', 'Costas');
INSERT INTO Prova VALUES(15,'15-04-19',100, 'Torneio de Mirandela', 'Brucos');
INSERT INTO Prova VALUES(16,'15-05-21',100, 'Coimbra Open', 'Brucos');


--Inserir Resultados

INSERT INTO Resultado VALUES(4,50, 'Torneio de Mirandela', 'Costas',3, 61); -- tempos em segundos
INSERT INTO Resultado VALUES(5,100, 'Torneio de Mirandela', 'Brucos',2,97);
INSERT INTO Resultado VALUES(8,100, 'Coimbra Open', 'Brucos',7,105);
INSERT INTO Resultado VALUES(6,100, 'Campeonato Nacional', 'Mariposa',8,100);
INSERT INTO Resultado VALUES(9,50, 'Campeonato Nacional', 'Costas',7,110);


