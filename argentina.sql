----USU�RIO ARGENTINA----

SELECT * FROM sys.funcionario;

SET TRANSACTION NAME 'Corre��o na idade do Jo�o (usu�rio argentina)';

UPDATE sys.funcionario
  SET idade = 80
  WHERE nome = 'Jo�o';

ROLLBACK;
--COMMIT;