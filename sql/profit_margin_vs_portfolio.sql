/*
Análise: Margem de lucro por produto vs média do portfólio

Objetivo:
Avaliar a eficiência financeira de cada produto,
comparando sua margem de lucro com a média geral do portfólio.
*/

WITH cteProfitMargin AS (
    SELECT
        [product],
        ROUND(SUM([profit]) / SUM([sales]), 4) AS profit_margin
    FROM [finances]
    GROUP BY [product]
),

cteAveragePortfolio AS (
    SELECT 
        *,
        avg([profit_margin]) OVER () AS avg_portfolio
    FROM [cteProfitMargin]
)

SELECT
    *,
    CASE 
        WHEN [profit_margin] > [avg_portfolio] THEN 'Acima da média'
        WHEN [profit_margin] < [avg_portfolio] THEN 'Abaixo da média'
        ELSE 'Na média'
    END AS margin_classification
FROM [cteAveragePortfolio]