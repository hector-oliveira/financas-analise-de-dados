/*
Análise: Eficiência operacional por produto

Objetivo:
Avaliar quais produtos são mais eficientes operacionalmente,
relacionando custo (COGS), vendas e lucro.

A análise permite identificar:
- Produtos que convertem melhor vendas em lucro
- Produtos onde o custo está corroendo a margem
*/

WITH cteProductEfficiency AS (
    SELECT
        [product],
        ROUND(SUM([sales]), 2)  AS total_sales,
        ROUND(SUM([cogs]), 2)   AS total_cogs,
        ROUND(SUM([profit]), 2) AS total_profit,

        -- Proporção do custo sobre as vendas
        ROUND(SUM([cogs]) / SUM([sales]), 4) AS cogs_ratio,

        -- Margem de lucro
        ROUND(SUM([profit]) / SUM([sales]), 4) AS profit_margin
    FROM finances
    GROUP BY [product]
)

SELECT
    *,
    CASE
        WHEN profit_margin >= AVG(profit_margin) OVER () 
            THEN 'Alta eficiência'
        ELSE 'Baixa eficiência'
    END AS efficiency_classification
FROM cteProductEfficiency
ORDER BY profit_margin DESC;
