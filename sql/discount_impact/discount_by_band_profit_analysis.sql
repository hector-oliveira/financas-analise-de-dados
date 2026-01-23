/*
Análise: Impacto das Faixas de Desconto no Lucro e na Margem

Contexto:
A empresa utiliza políticas de desconto para impulsionar vendas,
mas precisa avaliar se essas estratégias geram valor financeiro
ou se estão reduzindo a rentabilidade do negócio.

Objetivo:
Analisar como diferentes faixas de desconto impactam:
- Volume de vendas
- Lucro total
- Margem de lucro

A análise busca responder se descontos maiores aumentam o lucro
ou se estão corroendo a margem.

Métricas:
- total_sales: Soma das vendas por faixa de desconto
- total_profit: Soma do lucro por faixa de desconto
- profit_margin: Lucro dividido pelas vendas

Regra(s) de negócio:
- A margem é comparada com a média geral das faixas de desconto.
- Cada faixa é classificada como acima, abaixo ou na média.
*/

WITH cte_discount_performance AS (
    SELECT
        discount_band,
        ROUND(SUM(sales), 2)  AS total_sales,
        ROUND(SUM(profit), 2) AS total_profit,
        ROUND(
            SUM(profit) / NULLIF(SUM(sales), 0),
            4
        ) AS profit_margin
    FROM finances
    GROUP BY discount_band
)
SELECT
    discount_band,
    total_sales,
    total_profit,
    profit_margin,
    CASE 
        WHEN profit_margin > AVG(profit_margin) OVER () THEN 'Margem acima da média'
        WHEN profit_margin < AVG(profit_margin) OVER () THEN 'Margem abaixo da média'
        ELSE 'Margem na média'
    END AS margin_classification
FROM cte_discount_performance
ORDER BY total_profit DESC;
