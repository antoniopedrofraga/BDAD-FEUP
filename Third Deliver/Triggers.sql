
CREATE TRIGGER IF NOT EXISTS Treinador_insert
BEFORE INSERT ON Treinador
	WHEN (new.id IN (SELECT id FROM Atleta))
	BEGIN
	SELECT RAISE(ABORT, 'Esta pessoa ja e um atleta, nao pode ser treinador');
	END;
	
CREATE TRIGGER IF NOT EXISTS Atleta_insert
BEFORE INSERT ON Atleta
	WHEN (new.id IN (SELECT id FROM Treinador))
	BEGIN
	SELECT RAISE(ABORT, 'Esta pessoa ja e um treinador, nao pode ser atleta');
	END;
	

	
	