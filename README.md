# Analise Financeira e Comercial

## Visão Geral

Este projeto apresenta uma análise financeira e comercial baseada em dados de vendas de uma empresa multinacional fictícia. O objetivo é transformar dados operacionais em informações que apoiem decisões relacionadas a rentabilidade, crescimento e eficiência.

A análise considera operações em diferentes países, produtos e níveis de desconto, permitindo avaliar o impacto dessas variáveis na saúde financeira do negócio.

Dataset utilizado: *[Financial Sample - Kaggle](https://www.kaggle.com/datasets/nickolashirata/financial-sample)*

---

# Objetivo do Projeto

Demonstrar como os dados financeiros podem ser organizados e analisados para responder as perguntas de negócio, como:

- O crescimento da empresa está gerando lucro sustentável?
- Quais produtos sustentam a rentabilidade do negócio?
- Quais mercados são mais eficientes financeiramente?
- Descontos estão aumentando lucro ou apenas volume?
- Onde existe risco operacional que podem comprometer margens?

O projeto tem como prioridade identificar **riscos e apoiar decisões possíveis de serem realizadas**, não apenas apresentar números.

---

# Problema de Negócio

A empresa apresenta um aumento constante em vendas e presença internacional, mas existem dúvidas estratégicas sobre a sustentabilidade desse crescimento.

A gestão precisa entender:

- Se o aumento nas vendas está sendo acompanhado por aumento proporcional no lucro.
- Se algumas operações estão consumindo margem silenciosa.
- Se políticas comerciais, como descontos, estão impactando negativamente a rentabilidade.
- Quais produtos e mercados sustentam o resultado financeiro

Sem essa visibilidade, o crescimento pode ocorrer com perda gradual de eficiência.

---

# Principais Perguntas Respondidas

## Desempenho Financeiro

### Perguntas

- O negócio é lucrativo?
- O crescimento das vendas acompanha o crescimento do lucro?
- A margem permanece estável ao longo do tempo?

### Indicadores Observados

- Faturamento Total: **118,73 Mi**
- Lucro Líquido Total: **16,89 Mi**
- Margem média consolidada: **14,23%**
- Crescimento consistente de vendas e lucro ao longo do período

![Dashboard - Visão Executiva](/screenshots/executiva_financeira.png)

### Interpretação Executiva

**Achado**  
O negócio apresenta um crescimento constante em vendas e lucro, mantendo margem média segura próxima de 14%.

**Impacto**  
O crescimento atual indica operação financeira estável no curto prazo.

**Risco**  
Sem acompanhamento contínuo da margem ao longo do tempo, o crescimento pode ocorrer com redução gradual da rentabilidade.

**Recomendação**  
Monitorar a evolução mensal da margem e definir metas mínimas de rentabilidade para garantir o crescimento sustentável.

---

## Desempenho por país

### Perguntas

- Quais países geram mais retorno financeiro?
- Onde há alto volume e baixa eficiência?
- Quais mercados devem ser priorizados?

### Indicadores Observados

- **França** e **Alemanha** apresentam margens superiores a **15%**
- **Estado Unidos** possui **alto volume de venda** com **eficiência inferior à média**
- México apresenta menor geração proporcional de lucro

![Dashboard - Desempenho por País](/screenshots/performance_paises.png)

### Interpretação Executiva

**Achado**  
Existem mercados com alto volume de vendas, mas eficiência inferior à média geral.

**Impacto**  
Recursos comerciais podem estar sendo direcionados para regiões com menor retorno financeiro.

**Risco**  
Manter investimentos em mercados pouco eficientes pode reduzir a rentabilidade total do negócio.

**Recomendação**  
Priorizar investimentos em mercados com maior margem e revisar estratégias comerciais nos países com menor eficiência.

---

## Desempenho por Produto

### Perguntas

- Quais produtos geram mais lucro?
- Existem produtos com margens abaixo da média?
- Onde o custo impacta diretamente no resultado?

### Indicadores Observados

- O produto **Paseo** apresenta maior lucro absoluto (aproximadamente 4,8 Mi)
- O produto **Amarilla** apresenta maior margem de lucro (aproximadamente 15,86%)
- O produto **Velo** apresenta custo operacional elevado (cerca de 87% da receita)

![Dashboard - Desempenho por Produto](/screenshots/analise_produtos.png)
### Interpretação Executiva

**Achado**  
Existe uma variação significante entre os produtos.

**Impacto**  
Produtos com custo elevado reduzem a margem total e aumenta o risco financeiro.

**Risco**  
Produtos com custo alto podem se tornar inviáveis financeiramente caso ocorra variações operacionais.

**Recomendação**  
Revisar estrutura de custo e política de preço para produtos com maior impacto negativo na margem.

---
## Impacto dos Descontos

### Perguntas

- Descontos aumentam rentabilidade ou apenas volume de vendas?
- Quais níveis de descontos são sustentáveis?
- Onde a margem está sendo reduzida?
  
### Indicadores Orientados

- Descontos elevados apresentam margens menores.
- Faixa de descontos médio mantêm o equilíbrio entre volume e rentabilidade.
- Operações sem descontos implicam em maior eficiência financeira.

![Dashboard - Descontos](/screenshots/impacto_descontos.png)

### Interpretação Executiva

**Achado**  
Descontos elevados reduzem a margem operacional.

**Impacto**  
Embora aumentem o volume de vendas, reduzem o lucro proporcional.

**Risco**  
Uso frequente de descontos agressivos pode comprometer a rentabilidade total.

**Recomendação**  
Limitar descontos elevados, passando a utilizar mais descontos médios, baixos ou sem desconto e monitorar impacto financeiro durante a aplicação.

--- 

## Eficiência Operacional

### Perguntas

- Qual a relação entre custo e receita?
- Quais produtos operam com maior eficiência?
- Onde existem oportunidades de melhoria?

### Indicadores Operacionais

- Custos operacionais consomem cerca de **85,77%** da receita total.
- Alguns produtos operam próximo ao limite mínimo de rentabilidade.
- Pequenas variações de custo impactam diretamente o lucro final.

![Dashboard - Eficiência Operacional](/screenshots/eficiencia_operacional.png)

### Interpretação Executiva

**Achado**  
O nível geral é bem elevado e impacta diretamente a margem do negócio.

**Impacto**  
A rentabilidade torna-se altamente dependente da estabilidade dos custos operacionais.

**Risco**  
Aumento de custos pode reduzir rapidamente o lucro, mesmo com crescimento de vendas.

**Recomendação**  
Priorizar iniciativas de redução de custo e monitorar produtos com maior percentual de custo sobre venda.

---

# Prioridades Imediatas

Com base nas análises realizadas, as seguintes ações apresentam maior potencial de impacto:

1. Monitorar a evolução mensal da margem para evitar crescimento com a perda de eficiência.

2. Revisar política de descontos elevados, priorizando aplicações em produtos com maior margem.
   
3. Avaliar estrutura de custo dos produtos com maior percentual de custo sobre venda.

4. Priorizar investimentos comerciais em mercados com maior eficiência financeira

---

# Arquitetura do Projeto
# Principais Indicadores Monitorados
# Impacto do Projeto
# Tecnologias Utilizadas
# Possíveis Evoluções

# Autor
**Hector Oliveira**  
Analista de Dados

Contado:  
📧 hectorabreu.oliveira@gmail.com  
🔗 [LinkedIn](www.linkedin.com/in/hectoroliveira-tech)
