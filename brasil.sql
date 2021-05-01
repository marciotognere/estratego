----USUÁRIO BRASIL----

SELECT * FROM sys.funcionario;

SET TRANSACTION NAME 'Correção na idade do Eduardo (usuário brasil)';

UPDATE sys.funcionario
  SET idade = 100
  WHERE nome = 'Eduardo';

/*INSERT INTO sys.funcionario(cpf,nome,idade)
  VALUES('44444444445','Marcio',30);*/

ROLLBACK;
COMMIT;


--LOCK
SET TRANSACTION NAME 'Correção na idade do João (usuário brasil)';

UPDATE sys.funcionario
  SET idade = 110
  WHERE nome = 'João';
