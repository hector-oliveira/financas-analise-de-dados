/*
Análise: Ranking de países por lucro

Objetivo:
Identificar quais países mais contribuem para o lucro total
e qual a posição relativa de cada um no ranking.

A análise ajuda a:
- Priorizar mercados estratégicos
- Comparar volume de vendas versus geração de valor
*/

WITH cteCountryProfit AS (
    SELECT
        [country],
        ROUND(SUM([sales]), 2)  AS total_sales,
        ROUND(SUM([profit]), 2) AS total_profit
    FROM finances
    GROUP BY [country]
)

SELECT
    *,
    RANK() OVER (ORDER BY total_profit DESC) AS profit_rank,

    -- Percentual de contribuição no lucro total
    ROUND(
        total_profit / SUM(total_profit) OVER (),
        4
    ) AS profit_contribution_pct
FROM cteCountryProfit
ORDER BY profit_rank;
