CREATE SCHEMA discog;
GO

SELECT * FROM INFORMATION_SCHEMA.SCHEMATA;

-- INFORMATION_SCHEMA É um objeto de sistema que contem os objectos principais do sistema


-- Exemplo de criação de uma tabela
-- comando CREATE 
-- As tabelas são sempre criadas num schema, default 'DBQ' se omitido no CREATE

CREATE TABLE discog.musical(
    id      INT     NOT NULL, --> NOT NULL simplifica preenchimento obrigatório
    nome VARCHAR(255)   NOT NULL,
    duracao NUMERIC(4)   NULL DEFAULT 0, --> DEFAULT define um valor de preenchimento qd não for indicado um explicito
    original    INT     NULL            --> a ultima linha não tem ,
);

SELECT * FROM INFORMATION_SCHEMA.TABLES t WHERE t.TABLE_SCHEMA = 'discog';
SELECT * FROM INFORMATION_SCHEMA.COLUMNS c WHERE c.TABLE_NAME = 'musica';

IF OBJECT_ID('discog.artista', 'U') IS NULL
CREATE TABLE discog.artista(
    id      INT     NOT NULL,
    origem      VARCHAR(3)   NULL,

);
ELSE
    PRINT 'ja existe';


-- se a tabela estiver errada, pode apagar-se com DROP
IF OBJECT_ID('discog.artista', 'U') IS NOT NULL
    DROP TABLE discog.artista
ELSE
    PRINT 'não existe';
/*MUITO IMPORTANTE
*as intruções em SQL são IRREVERSIVEIS
*ou seja, uma vez executadas não podem ser invertidas sem o comando contrário
*/

SELECT * FROM discog.artista;

ALTER TABLE discog.artista ADD
    estilo VARCHAR(100);

SELECT * FROM INFORMATION_SCHEMA.COLUMNS c WHERE c.TABLE_NAME = 'artista';

INSERT INTO discog.artista
    VALUES (1, 'PT', 'Blues');

    SELECT * FROM discog.artista;

DELETE FROM discog.artista -- Apaga todas as linhas da tabela
/* NOTA IMPORTANTE
*tal como acontece no DROP, o DELETE  é irreversivel
* ou seja, as linhas apagadas só podem ser recuperadas com INSERT
*/
