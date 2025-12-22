# 📊💰 Análise Financeira e Comercial — Dados, SQL Server e BI

## 👀 Visão Geral do Projeto

Este projeto apresenta uma **análise financeira e comercial completa**, baseada em um conjunto de dados que simula as vendas de uma empresa multinacional atuando em diferentes **países, produtos, segmentos de clientes e políticas de desconto**.

O trabalho foi desenvolvido com foco em **boas práticas de Análise de Dados**, simulando um cenário real de mercado, no qual os dados passam por um fluxo estruturado de:

- Limpeza e preparação
- Análise Exploratória de Dados (EDA)
- Consolidação e validação de métricas em **SQL Server**
- Preparação para consumo em **Business Intelligence**

O dataset original utilizado está disponível no Kaggle:  
[*Financial Sample*](https://www.kaggle.com/datasets/nickolashirata/financial-sample)

---

## 🎯 Objetivo do Projeto

O objetivo principal é demonstrar, de forma prática, como **dados brutos podem ser transformados em insights estratégicos**, apoiando a tomada de decisão em um contexto corporativo.

O projeto busca responder perguntas relacionadas a:
- Rentabilidade do negócio
- Crescimento e sazonalidade
- Eficiência operacional
- Impacto de descontos
- Performance por país, produto e segmento

Além disso, o projeto evidencia a separação clara entre:
- **Exploração dos dados (Python / EDA)**
- **Regras de negócio e métricas oficiais (SQL Server)**

---

## 🧠 Problema de Negócio

As análises desenvolvidas ao longo do projeto buscam responder às seguintes questões estratégicas:

### 📈 Desempenho Financeiro
- Qual foi o faturamento total por ano e por mês?
- Como o lucro e a margem evoluem ao longo do tempo?
- Houve crescimento ou queda de vendas e lucro?
- O crescimento de vendas foi acompanhado pelo crescimento do lucro?

### 🌍 Performance por País e Segmento
- Quais países geram mais receita e lucro?
- Existe país com alto volume de vendas, mas baixa rentabilidade?
- Qual segmento de clientes é mais rentável?
- O segmento governamental compra mais e gera mais ou menos lucro que o setor privado?

### 📦 Análise de Produtos
- Quais produtos geram mais lucro absoluto?
- Quais produtos têm baixa margem, mesmo vendendo bastante?
- Existe produto que merece revisão estratégica ou possível descontinuação?
- Qual o impacto do custo de fabricação no lucro final?

### 💸 Impacto dos Descontos
- Descontos altos realmente aumentam o volume vendido?
- Qual faixa de desconto gera maior lucro, e não apenas mais vendas?
- Existe nível de desconto que prejudica a margem?
- O impacto do desconto muda por país ou segmento?

### ⚙️ Eficiência Operacional
- Qual a relação entre COGS e Sales por produto?
- Onde os custos estão corroendo a margem?
- Qual país ou produto é mais eficiente operacionalmente?

### 📆 Sazonalidade e Tendência
- Existem meses com vendas consistentemente maiores?
- O padrão sazonal muda de um ano para outro?
- O lucro acompanha o crescimento das vendas ou cresce em ritmo diferente?

---

## 🛠️ Etapas do Projeto

### 1️⃣ Limpeza e Preparação dos Dados (Python)

Nesta etapa inicial, os dados foram tratados para garantir consistência e qualidade, sem aplicação de regras de negócio.

Principais atividades:
- Padronização dos nomes das colunas (`snake_case`)
- Conversão correta dos tipos de dados
- Tratamento de colunas categóricas
- Remoção de inconsistências e espaços em branco
- Preservação dos valores financeiros originais
- Geração de um dataset tratado para uso posterior em SQL Server

📌 **Importante:**  
Os valores financeiros não foram alterados nesta etapa. Toda validação e regra de negócio é aplicada posteriormente no SQL.

---

### 2️⃣ Análise Exploratória de Dados (EDA)

A Análise Exploratória foi realizada em Python, utilizando Jupyter Notebooks, com foco em:

- Entendimento do comportamento financeiro do negócio
- Identificação de padrões, tendências e outliers
- Avaliação de eficiência, rentabilidade e sazonalidade
- Geração de insights claros e acionáveis

Cada notebook contém:
- Objetivo da análise
- Perguntas de negócio respondidas
- Blocos de código bem comentados
- Uma seção final de **insights consolidados em Markdown**

---

### 3️⃣ SQL Server — Camada Analítica

Após a EDA, o projeto avança para o **SQL Server**, simulando um ambiente corporativo de Analytics / BI.

Nesta etapa, o SQL é utilizado como **fonte oficial da verdade**, onde:

- Os dados tratados são carregados sem regras de negócio
- Métricas são recalculadas e validadas
- Regras de negócio são aplicadas de forma explícita
- Views analíticas são criadas para consumo em BI

Principais análises desenvolvidas em SQL:
- Validação de vendas, lucro, COGS e margens
- Análises temporais (Year over Year, Month over Month)
- Rankings por país, produto e segmento
- Análise do impacto de descontos
- Avaliação de eficiência operacional

Técnicas utilizadas:
- CTEs
- Window Functions (`LAG`, `OVER`, `PARTITION BY`)
- Queries documentadas e padronizadas

---

### 4️⃣ Business Intelligence (Próxima Etapa)

As views criadas no SQL Server servirão como base para o desenvolvimento de dashboards, com foco em:

- Visão financeira executiva
- Performance por país, produto e segmento
- Impacto de descontos e eficiência operacional
- Evolução temporal das métricas principais

---

## 💡 Impacto no Negócio

Este projeto demonstra como a análise de dados pode:

- Apoiar decisões estratégicas de **precificação e descontos**
- Identificar **oportunidades de crescimento** por país ou segmento
- Sinalizar produtos ou mercados com **baixa rentabilidade**
- Melhorar a compreensão da **eficiência operacional**
- Criar uma base sólida para análises em BI

---

## 🧰 Tecnologias Utilizadas

| Tecnologia | Finalidade |
|-----------|-----------|
| Python | Limpeza e análise exploratória |
| Pandas | Manipulação e agregação de dados |
| Jupyter Notebook | Desenvolvimento exploratório |
| SQL Server | Camada analítica e regras de negócio |
| Git & GitHub | Versionamento e documentação |
| Excel | Fonte de dados |
| Power BI / Tableau | (Em desenvolvimento) |

---

## 🚀 Possíveis Extensões Futuras

- Modelagem dimensional (Star Schema)
- Análise avançada de sensibilidade de preços
- Segmentação de clientes
- Automatização de pipelines de dados
- Dashboards interativos

---

## 👨‍💻 Autor

**Hector Oliveira**  
Analista de Dados Júnior  

🔗 [LinkedIn](https://www.linkedin.com/in/hectoroliveira-tech/)
