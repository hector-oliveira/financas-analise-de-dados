/*
Análise: Impacto das faixas de desconto no lucro e na margem

Objetivo:
Avaliar como diferentes faixas de desconto impactam:
- o volume de vendas
- o lucro total
- a margem de lucro

A análise busca responder se descontos maiores realmente
geram mais lucro ou se estão corroendo a margem.
*/

WITH cteDiscountPerformance AS (
    
    -- Agregação por faixa de desconto
    SELECT
        [discount_band],
        ROUND(SUM([sales]), 2)  AS total_sales,
        ROUND(SUM([profit]), 2) AS total_profit,
        ROUND(SUM([profit]) / NULLIF(SUM([sales]), 0), 4) AS profit_margin
    FROM [finances]
    GROUP BY [discount_band]
)

SELECT
    discount_band,
    total_sales,
    total_profit,
    profit_margin,

    -- Classificação da margem em relação à média geral
    CASE 
        WHEN profit_margin > AVG(profit_margin) OVER () THEN 'Margem acima da média'
        WHEN profit_margin < AVG(profit_margin) OVER () THEN 'Margem abaixo da média'
        ELSE 'Margem na média'
    END AS margin_classification

FROM cteDiscountPerformance
ORDER BY total_profit DESC;
