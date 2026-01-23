/*
Análise: Ranking de Países por Lucro

Contexto:
A empresa atua em múltiplos países e precisa entender
quais mercados mais contribuem para a geração de lucro,
independentemente do volume de vendas.

Objetivo:
Classificar os países com base no lucro total, identificar
a posição de cada um no ranking e calcular sua contribuição
percentual no lucro global.

Métricas:
- total_sales: Soma total de vendas por país
- total_profit: Soma total de lucro por país
- profit_rank: Posição do país no ranking de lucro
- profit_contribution_pct: Participação percentual no lucro total

Regra(s) de negócio:
- O ranking é definido pelo lucro total em ordem decrescente.
- A contribuição percentual é calculada sobre o lucro total global.
*/

WITH cte_country_profit AS (
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
    RANK() OVER (ORDER BY total_profit DESC) AS profit_rank,
    ROUND(
        total_profit / NULLIF(SUM(total_profit) OVER (), 0),
        4
    ) AS profit_contribution_pct
FROM cte_country_profit
ORDER BY profit_rank;
