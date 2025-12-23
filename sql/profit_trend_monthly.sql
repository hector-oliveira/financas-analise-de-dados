/*
Análise: Evolução mensal do lucro

Objetivo:
Avaliar a variação do lucro mês a mês para identificar
tendência de crescimento ou queda ao longo do tempo.
*/

WITH cteMonthlyProfit AS (
    
    --  Agregação mensal para cada ano, observando o lucro em cada secção
    SELECT
        [year],
        [month_number],
        [month_name],
        ROUND(SUM([profit]), 2) as total_profit
    FROM finances
    GROUP BY
        [year],
        [month_number],
        [month_name]
),
cteProfitComparison AS (
    -- Window function para comparar o lucro com o mês anterior
    SELECT
        monthly.*,
        LAG(monthly.[total_profit])
            OVER ( ORDER BY monthly.[year], monthly.[month_number] ) AS previous_month_profit
    FROM cteMonthlyProfit AS monthly
)

SELECT
    profit.[year],
    profit.[month_name],
    profit.[total_profit],
    profit.[previous_month_profit],
    CASE 
        WHEN profit.[previous_month_profit] IS NULL 
        THEN 'Primeiro mês'
        
        WHEN profit.[previous_month_profit] < profit.[total_profit] THEN 'Crescimento'
        
        WHEN profit.[previous_month_profit] > profit.[total_profit] THEN 'Queda'
        
        ELSE 'Estável'
    END AS profit_trend
FROM cteProfitComparison AS profit;

