/*
Análise: Eficiência Operacional por Produto

Contexto:
Entender a eficiência operacional por produto ajuda a otimizar
custos, identificar produtos rentáveis e tomar decisões estratégicas
de precificação e mix de produtos.

Objetivo:
Avaliar quais produtos convertem melhor vendas em lucro,
identificando produtos de alta e baixa eficiência.

Métricas calculadas:
- total_sales: Volume de vendas total do produto
- total_cogs: Custo total do produto (COGS)
- total_profit: Lucro total do produto
- cogs_ratio: Proporção do custo sobre as vendas (COGS/Vendas)
- profit_margin: Margem de lucro do produto (Lucro/Vendas)
- efficiency_classification: Classificação de eficiência em relação à média do portfólio
*/

WITH cte_product_efficiency AS (
    SELECT
        [product],
        ROUND(SUM([sales]), 2)  AS total_sales,
        ROUND(SUM([cogs]), 2)   AS total_cogs,
        ROUND(SUM([profit]), 2) AS total_profit,
        ROUND(SUM([cogs]) / SUM([sales]), 4) AS cogs_ratio,
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
FROM cte_product_efficiency
ORDER BY profit_margin DESC;
