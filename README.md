# 📊💰 Análise Financeira e Comercial — BI, SQL Server e Tomada de Decisão

## 👀 Visão Geral do Projeto

Este projeto apresenta uma **análise financeira e comercial completa**, simulando um cenário corporativo real de **Business Intelligence**, no qual dados são transformados em **informações confiáveis para suporte à tomada de decisão estratégica**.

A análise é baseada em um dataset que representa vendas de uma empresa multinacional, com operações em diferentes **países, produtos, segmentos de clientes e políticas de desconto**.

O foco do projeto está em:
- Estruturar dados com qualidade
- Consolidar métricas financeiras confiáveis
- Analisar desempenho, rentabilidade e eficiência
- Comunicar insights de forma clara para gestores

📌 Dataset original disponível no Kaggle:  
[*Financial Sample*](https://www.kaggle.com/datasets/nickolashirata/financial-sample)

---

## 🎯 Objetivo do Projeto

Demonstrar, de forma prática, como **dados financeiros brutos podem ser organizados, analisados e transformados em insights acionáveis**, apoiando decisões relacionadas a:

- Rentabilidade e margens
- Crescimento sustentável
- Eficiência operacional
- Estratégias de desconto
- Performance por país, produto e segmento

O projeto segue uma separação clara entre:
- **Preparação dos dados (Python)**
- **Cálculo oficial de métricas e regras de negócio (SQL Server)**
- **Análise visual e storytelling (Power BI)**

---

## 🧠 Problema de Negócio

Em um cenário de empresa multinacional, a gestão precisa responder perguntas como:

### 📈 Desempenho Financeiro
- O negócio é lucrativo?
- O crescimento de vendas acompanha o crescimento do lucro?
- As margens permanecem saudáveis ao longo do tempo?

### 🌍 Performance por País
- Quais países geram mais lucro?
- Onde há alto volume de vendas, mas baixa eficiência?
- Quais mercados são mais estratégicos financeiramente?

### 📦 Produtos
- Quais produtos concentram vendas e lucro?
- Existem produtos com margens abaixo da média?
- Onde o custo impacta diretamente a rentabilidade?

### 💸 Descontos
- Descontos aumentam vendas, lucro ou apenas volume?
- Quais faixas de desconto são sustentáveis?
- Onde a margem está sendo corroída?

### ⚙️ Eficiência Operacional
- Qual a relação entre COGS e vendas?
- Quais produtos operam com maior eficiência?
- Onde existem oportunidades de otimização de custos?

---

## 🛠️ Etapas do Projeto

### 1️⃣ Preparação e Qualidade dos Dados (Python)

Os dados foram tratados para garantir **consistência, padronização e confiabilidade**, sem aplicação de regras de negócio.

Principais ações:
- Padronização de colunas (`snake_case`)
- Conversão correta de tipos de dados
- Tratamento de categorias
- Remoção de inconsistências
- Preservação dos valores financeiros originais

📌 Nenhuma métrica financeira é calculada nesta etapa.

---

### 2️⃣ SQL Server — Camada Analítica e Regras de Negócio

O **SQL Server atua como fonte oficial da verdade**, simulando um ambiente corporativo de BI.

Nesta camada:
- Métricas financeiras são recalculadas
- Regras de negócio são aplicadas explicitamente
- Análises são documentadas e reutilizáveis
- Dados ficam prontos para consumo em BI

Principais análises:
- Vendas, lucro, COGS e margens
- Análises temporais (YoY)
- Rankings por país e produto
- Impacto de descontos
- Eficiência operacional

Técnicas utilizadas:
- CTEs
- Window Functions (`LAG`, `OVER`)
- Queries organizadas e documentadas

---

### 3️⃣ Business Intelligence — Dashboard Analítico (Power BI)

Os dados consolidados são consumidos no **Power BI**, com foco em **análise visual, storytelling e apoio à decisão**.

O modelo segue **modelagem dimensional (Star Schema)**, incluindo:
- Fato financeira
- Dimensão calendário
- Dimensões de produto, país e desconto

#### 📊 Estrutura do Dashboard

O dashboard é dividido em **5 visões analíticas**:

**1️⃣ Visão Executiva**
- KPIs: Vendas, Lucro, Margem, Vendas YoY, Lucro YoY
- Evolução temporal
- Visão geral da saúde financeira

**2️⃣ Desempenho por País**
- Ranking de países por lucro
- Relação entre vendas e eficiência

**3️⃣ Análise por Produto**
- Vendas, COGS e lucro
- Margem por produto

**4️⃣ Impacto dos Descontos**
- Avaliação do impacto real dos descontos na rentabilidade

**5️⃣ Eficiência Operacional**
- Relação entre custos e vendas
- Apoio a decisões de precificação e custos

📥 **Download dos arquivos**  
[*Diretório dos arquivos*](https://kutt.it/dashboard-financeiro)

📁 Conteúdo:
- `financial.xlsx`
- `Financial.pbix`

⚠️ Requer Power BI Desktop.

---

## 💡 Impacto no Negócio

Este projeto permite:
- Avaliar a saúde financeira do negócio
- Identificar mercados e produtos mais eficientes
- Apoiar decisões de precificação e desconto
- Otimizar custos e margens
- Sustentar decisões estratégicas com dados confiáveis

---

## 🧰 Tecnologias Utilizadas

| Tecnologia | Finalidade |
|----------|-----------|
| Python | Preparação de dados |
| Pandas | Manipulação |
| SQL Server | Camada analítica |
| Power BI | Visualização e storytelling |
| Git & GitHub | Versionamento |
| Excel | Fonte de dados |

---

## 👨‍💻 Autor

**Hector Oliveira**  
Analista de Dados Júnior  

🔗 [LinkedIn](https://www.linkedin.com/in/hectoroliveira-tech/)
