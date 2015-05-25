.mode columns
.headers on
.nullvalue NULL

--pessoas que nao completaram 18 anos antes de 2015
SELECT id, nome 'nome                  ', data_nascimento 'data de nascimento'
FROM Pessoa
WHERE data_nascimento >= '1997-01-01'
ORDER BY data_nascimento ASC;

--competicoes que sao torneios
SELECT id, nome 'nome                  ', data
FROM Competicao
WHERE nome LIKE '%Torneio%';

--provas do tipo crawl ou costas com distancias entre 25 a 100 metros
SELECT id, data, designacao
FROM Prova
WHERE nome LIKE 'C%' AND distancia BETWEEN 25 AND 100;

--piscinas fora das regioes das grandes cidades
SELECT id, comprimento, regiao
FROM Piscina
WHERE regiao not in ('Lisboa', 'Porto');

--lista crescente da altura dos atletas
SELECT id, altura, clube 'clube                     '
FROM Atleta
ORDER BY altura ASC;


SELECT AVG(tempo) 'tempo medio', MIN(tempo) 'tempo mais rapido', 
MAX(tempo) 'tempo mais lento'
FROM Resultado;

--pessoa do genero masculino mais velha
SELECT id, nome, data_nascimento 'data de nascimento'
FROM Pessoa
WHERE data_nascimento = (
	SELECT MIN(data_nascimento)
	FROM Pessoa
	WHERE genero = 'masculino')
AND genero = 'masculino';

--nº de clubes nas regioes das 2 grandes cidades
SELECT regiao, COUNT(*) 'Numero de Clubes na Regiao'
FROM Clube
WHERE regiao = 'Porto' OR regiao = 'Lisboa'
GROUP BY regiao;

--atletas com mais de 50 quilos
SELECT id, nome 'nome               ', data_nascimento 'data_de_nascimento'
FROM Pessoa
WHERE id NOT IN
	(SELECT id
	FROM Atleta
	WHERE peso <=50)
AND id NOT IN
	(SELECT id
	FROM Treinador);

--provas realizadas antes do campeonato nacional
SELECT data, nome, designacao
FROM Prova
WHERE data < 
	(SELECT MIN(data)
	FROM Prova
	WHERE nome = 'Campeonato Nacional');