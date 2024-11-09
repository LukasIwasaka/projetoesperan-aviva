CREATE
OR REPLACE VIEW VW_DOACOES_MENSAIS AS
SELECT
    REPLACE (
        CAST(FORMAT (SUM(VALOR_DOACAO), 2) AS CHAR),
        ',',
        '.'
    ) AS DOACOES
FROM
    DB_ESPERANCA_VIVA.DOACOES WHERE DATA_DOACAO BETWEEN '2024-10-01' AND '2024-10-30';