# 🧠 Camada Analítica — SQL Server

Esta pasta contém as **análises desenvolvidas em SQL Server**, responsáveis por consolidar métricas,
aplicar regras de negócio e gerar dados prontos para consumo em ferramentas de BI.

Nesta etapa, o SQL atua como a **fonte oficial da verdade**, onde os dados são:
- Validados
- Agregados
- Transformados em métricas de negócio
- Preparados para análises e dashboards

A organização simula um **ambiente real de Analytics / Business Intelligence**.

---

## 🎯 Objetivo da camada SQL

- Transformar dados brutos em **informações acionáveis**
- Aplicar **regras de negócio** diretamente nas consultas
- Criar métricas confiáveis para suporte à tomada de decisão
- Garantir consistência entre análises e visualizações

---

## 🗂️ Estrutura das análises

As análises foram organizadas por **tema analítico**, facilitando a leitura e manutenção:

```text
sql/
├── country_and_segment_performance/
│   └── Análises financeiras por país e contribuição no resultado
│
├── discount_impact/
│   └── Impacto das faixas de desconto sobre lucro e margem
│
├── financial_performance/
│   └── Evolução temporal do lucro e tendências financeiras
│
├── operational_efficiency/
│   └── Eficiência operacional por produto (custo x margem)
│
└── product_analysis/
    └── Rentabilidade e margem de lucro por produto
