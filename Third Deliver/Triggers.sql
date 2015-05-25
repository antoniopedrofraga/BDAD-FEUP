/*CREATE TRIGGER Atleta_insert
BEFORE INSERT ON Atleta
  FOR EACH ROW
  WHEN(((SELECT data_nascimento FROM Pessoa WHERE id = new.id) - time())
  BEGIN*/
  
  
	

CREATE TRIGGER IF NOT EXISTS Regiao_insert
BEFORE INSERT ON Clube
	WHEN (new.regiao NOT IN (SELECT regiao FROM Associacao))
	BEGIN
	INSERT INTO Associacao VALUES(new.regiao);
	END;