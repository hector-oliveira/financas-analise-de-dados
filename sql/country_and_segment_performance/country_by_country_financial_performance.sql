/*
Análise: Performance Financeira por País

Contexto:
A empresa atua em múltiplos países e precisa entender não apenas onde vende mais,
mas onde gera maior eficiência financeira.

Objetivo:
Avaliar a performance financeira de cada país, comparando vendas totais,
lucro total e margem de lucro, permitindo identificar os mercados mais eficientes.

Métricas:
- total_sales: Soma total de vendas por país
- total_profit: Soma total de lucro por país
- profit_margin: Relação entre lucro e vendas (lucro / vendas)

Regra(s) de negócio:
- A margem de lucro é calculada como lucro total dividido pelas vendas totais.
- Os países são ordenados da maior para a menor margem de lucro.

*/

WITH cte_country_performance AS (
    SELECT
        country,
        ROUND(SUM(sales), 2)  AS total_sales,
        ROUND(SUM(profit), 2) AS total_profit
    FROM finances
    GROUP BY country
)
SELECT 
    country,
    total_sales,
    total_profit,
    ROUND(total_profit / NULLIF(total_sales, 0), 4) AS profit_margin
FROM cte_country_performance
ORDER BY profit_margin DESC;
