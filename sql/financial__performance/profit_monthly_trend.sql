/*
Análise: Evolução Mensal do Lucro

Contexto:
Entender o comportamento do lucro ao longo do tempo é fundamental
para avaliar desempenho financeiro e apoiar decisões estratégicas.

Objetivo:
Avaliar a variação do lucro mês a mês, identificando tendências
de crescimento, queda ou estabilidade.

Métricas:
- total_profit: Lucro total no mês
- previous_month_profit: Lucro do mês anterior para comparação
- profit_trend: Classificação do comportamento do lucro
*/

WITH cte_monthly_profit AS (
    -- Agregação mensal por ano
    SELECT
        [year],
        [month_number],
        [month_name],
        ROUND(SUM([profit]), 2) AS total_profit
    FROM finances
    GROUP BY
        [year],
        [month_number],
        [month_name]
),
cte_profit_comparison AS (
    -- Comparação com o mês anterior usando Window Function
    SELECT
        monthly.*,
        LAG(monthly.[total_profit]) 
            OVER (ORDER BY monthly.[year], monthly.[month_number]) AS previous_month_profit
    FROM cte_monthly_profit AS monthly
)

SELECT
    profit.[year],
    profit.[month_name],
    profit.[total_profit],
    profit.[previous_month_profit],
    CASE
        WHEN profit.[previous_month_profit] IS NULL THEN 'Primeiro mês'
        WHEN profit.[previous_month_profit] < profit.[total_profit] THEN 'Crescimento'
        WHEN profit.[previous_month_profit] > profit.[total_profit] THEN 'Queda'
        ELSE 'Estável'
    END AS profit_trend
FROM cte_profit_comparison AS profit;
