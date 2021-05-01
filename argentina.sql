----USUÁRIO ARGENTINA----

SELECT * FROM sys.funcionario;

SET TRANSACTION NAME 'Correção na idade do João (usuário argentina)';

UPDATE sys.funcionario
  SET idade = 80
  WHERE nome = 'João';

ROLLBACK;
--COMMIT;