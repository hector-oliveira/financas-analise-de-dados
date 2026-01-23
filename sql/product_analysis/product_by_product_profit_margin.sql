/*
Análise: Margem de Lucro por Produto vs Média do Portfólio

Contexto:
Comparar a margem de lucro individual de cada produto com a
média do portfólio permite identificar rapidamente quais produtos
estão performando acima ou abaixo da expectativa geral.

Objetivo:
- Avaliar a eficiência financeira de cada produto
- Identificar produtos com margem superior, inferior ou igual à média
- Apoiar decisões de portfólio, precificação e promoção

Métricas calculadas:
- profit_margin: Margem de lucro do produto (Lucro / Vendas)
- avg_portfolio: Margem média de lucro do portfólio
- margin_classification: Classificação do produto em relação à média do portfólio
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
        AVG([profit_margin]) OVER () AS avg_portfolio
    FROM cteProfitMargin
)

SELECT
    *,
    CASE 
        WHEN [profit_margin] > [avg_portfolio] THEN 'Acima da média'
        WHEN [profit_margin] < [avg_portfolio] THEN 'Abaixo da média'
        ELSE 'Na média'
    END AS margin_classification
FROM cteAveragePortfolio;
