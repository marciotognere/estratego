----USU�RIO BRASIL----

SELECT * FROM sys.funcionario;

SET TRANSACTION NAME 'Corre��o na idade do Eduardo (usu�rio brasil)';

UPDATE sys.funcionario
  SET idade = 100
  WHERE nome = 'Eduardo';

/*INSERT INTO sys.funcionario(cpf,nome,idade)
  VALUES('44444444445','Marcio',30);*/

ROLLBACK;
COMMIT;


--LOCK
SET TRANSACTION NAME 'Corre��o na idade do Jo�o (usu�rio brasil)';

UPDATE sys.funcionario
  SET idade = 110
  WHERE nome = 'Jo�o';
