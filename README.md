# 📊💰 Análise Financeira e Comercial — Dados, SQL Server e Business Intelligence

## 👀 Visão Geral do Projeto

Este projeto apresenta uma **análise financeira e comercial end-to-end**, baseada em um conjunto de dados que simula as vendas de uma empresa multinacional atuando em diferentes **países, produtos, segmentos de clientes e políticas de desconto**.

O trabalho foi desenvolvido seguindo **boas práticas de Análise de Dados e BI**, simulando um cenário corporativo real, no qual os dados percorrem um fluxo estruturado de:

- Limpeza e preparação  
- Análise Exploratória de Dados (EDA)  
- Consolidação e validação de métricas em **SQL Server**  
- Modelagem e visualização em **Business Intelligence (Power BI)**  

O dataset original utilizado está disponível no Kaggle:  
[*Financial Sample*](https://www.kaggle.com/datasets/nickolashirata/financial-sample)

---

## 🎯 Objetivo do Projeto

O objetivo principal é demonstrar, de forma prática, como **dados brutos podem ser transformados em insights estratégicos**, apoiando a tomada de decisão em um contexto corporativo.

O projeto busca responder perguntas relacionadas a:
- Rentabilidade do negócio  
- Crescimento e desempenho ao longo do tempo  
- Eficiência operacional  
- Impacto de políticas de desconto  
- Performance por país, produto e segmento  

Além disso, o projeto evidencia a separação clara entre:
- **Exploração e entendimento inicial dos dados (Python / EDA)**  
- **Cálculo oficial de métricas e regras de negócio (SQL Server)**  
- **Consumo analítico e storytelling (Business Intelligence)**  

---

## 🧠 Problema de Negócio

As análises desenvolvidas ao longo do projeto buscam responder às seguintes questões estratégicas:

### 📈 Desempenho Financeiro
- Qual foi o faturamento e o lucro total do negócio?
- Como vendas e lucro evoluem ao longo do tempo?
- O crescimento de vendas foi acompanhado pelo crescimento do lucro?
- A margem de lucro se manteve saudável?

### 🌍 Performance por País
- Quais países mais contribuem para vendas e lucro?
- Existem países com alto volume de vendas, mas baixa margem?
- Quais mercados são mais eficientes financeiramente?

### 📦 Análise de Produtos
- Quais produtos geram mais vendas e lucro?
- Quais produtos possuem margem abaixo da média?
- Onde o custo operacional impacta diretamente a rentabilidade?

### 💸 Impacto dos Descontos
- Descontos maiores realmente geram mais lucro?
- Qual faixa de desconto maximiza lucro e margem?
- Existem descontos que aumentam vendas, mas corroem a margem?

### ⚙️ Eficiência Operacional
- Qual a relação entre COGS e vendas?
- Quais produtos são mais eficientes operacionalmente?
- Onde existem oportunidades de otimização de custos?

### 📆 Tendência Temporal
- Existe padrão de crescimento ao longo do tempo?
- Há meses com desempenho consistentemente melhor ou pior?
- O lucro acompanha o comportamento das vendas?

---

## 🛠️ Etapas do Projeto

### 1️⃣ Limpeza e Preparação dos Dados (Python)

Nesta etapa inicial, os dados foram tratados para garantir consistência e qualidade, **sem aplicação de regras de negócio**.

Principais atividades:
- Padronização dos nomes das colunas (`snake_case`)
- Conversão correta dos tipos de dados
- Tratamento de colunas categóricas
- Remoção de inconsistências
- Preservação dos valores financeiros originais
- Geração de dataset limpo para consumo posterior

📌 **Importante:**  
Nenhuma métrica financeira foi calculada nesta etapa. Todas as regras de negócio são aplicadas posteriormente no SQL Server.

---

### 2️⃣ Análise Exploratória de Dados (EDA)

A Análise Exploratória foi realizada em Python (Jupyter Notebook), com foco em:

- Entendimento do comportamento financeiro
- Identificação de padrões e tendências
- Avaliação preliminar de eficiência e rentabilidade
- Geração de insights acionáveis

Cada notebook contém:
- Objetivo da análise
- Perguntas de negócio
- Código comentado
- Seção final de **insights consolidados**

---

### 3️⃣ SQL Server — Camada Analítica e Validação de Métricas

O SQL Server é utilizado como a **fonte oficial da verdade**, simulando um ambiente corporativo de BI.

Nesta etapa:
- Os dados tratados são carregados sem regras de negócio
- Métricas são recalculadas e validadas
- Regras de negócio são aplicadas explicitamente
- Queries documentadas são desenvolvidas para consumo em BI

Principais análises desenvolvidas em SQL:
- Validação de vendas, lucro, COGS e margens
- Análises temporais (Year-over-Year)
- Rankings por país e produto
- Impacto de descontos
- Eficiência operacional

Técnicas utilizadas:
- CTEs  
- Window Functions (`LAG`, `OVER`)  
- Queries documentadas e organizadas por análise  

---

### 4️⃣ Business Intelligence — Dashboard Analítico (Power BI)

Nesta etapa final, os dados consolidados no SQL Server são consumidos no **Power BI**, com foco em **storytelling e tomada de decisão**.

O dashboard foi construído com **modelagem dimensional (Star Schema)**, incluindo:
- Tabela fato financeira
- Tabela calendário dedicada
- Dimensões de produto, país e desconto

#### 📊 Estrutura do Dashboard

O dashboard é organizado em **5 páginas analíticas**:

**1️⃣ Visão Executiva**
- KPIs: Vendas Totais, Lucro Total, Margem de Lucro, Vendas YoY (%), Lucro YoY (%)
- Evolução mensal de vendas e lucro
- Visão geral da saúde financeira do negócio

**2️⃣ Desempenho por País**
- Ranking de países por lucro
- Relação entre vendas e lucro por país
- Identificação de mercados mais eficientes

**3️⃣ Análise por Produto**
- Comparação entre vendas, custos (COGS) e lucro
- Margem de lucro por produto
- Identificação de produtos com baixa eficiência

**4️⃣ Impacto dos Descontos**
- Análise de vendas, lucro e margem por faixa de desconto
- Avaliação do impacto real dos descontos na rentabilidade

**5️⃣ Eficiência Operacional**
- Relação entre COGS e vendas
- Indicadores de eficiência por produto
- Apoio a decisões de precificação e custos

📥 **Download do Dashboard**  
O arquivo do dashboard está disponível para download no link abaixo:  
[*Diretório dos arquivos*](https://kutt.it/dashboard-financeiro)

📁 Conteúdo no diretório:
- financial.xlsx *(base de dados tratada)*
- Financial.pbix *(dashboard Power BI)*

⚠️ Para visualizar o dashboard, é necessário ter o Power BI Desktop instalado.

---

## 💡 Impacto no Negócio

Este projeto demonstra como dados podem ser utilizados para:

- Avaliar a saúde financeira do negócio
- Identificar oportunidades de crescimento
- Otimizar custos e margens
- Revisar estratégias de desconto
- Apoiar decisões estratégicas com base em dados confiáveis

---

## 🧰 Tecnologias Utilizadas

| Tecnologia | Finalidade |
|---------|-----------|
| Python | Limpeza e EDA |
| Pandas | Manipulação de dados |
| Jupyter Notebook | Análise exploratória |
| SQL Server | Camada analítica |
| Power BI | Visualização e storytelling |
| Git & GitHub | Versionamento |
| Excel | Fonte de dados |

---

## 👨‍💻 Autor

**Hector Oliveira**  
Analista de Dados Júnior  

🔗 [LinkedIn](https://www.linkedin.com/in/hectoroliveira-tech/)
