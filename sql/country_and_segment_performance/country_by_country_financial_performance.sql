/*
Análise: Eficiência financeira por país

Objetivo:
Avaliar a performance financeira dos países,
comparando faturamento, lucro e margem de lucro.
*/

WITH cteCountryPerformance AS (
    SELECT
        [country],
        ROUND(SUM([sales]), 2) AS total_sales,
        ROUND(SUM([profit]), 2) AS total_profit
    FROM [finances]
    GROUP BY [country]
)

SELECT 
    *,
    ROUND([total_profit] / [total_sales], 4) as profit_margin
FROM [cteCountryPerformance]
ORDER BY 
    [profit_margin] DESC