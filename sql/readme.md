# 🧠 SQL Server — Camada Analítica

Esta pasta contém as **análises desenvolvidas em SQL Server**, responsáveis por consolidar métricas, aplicar regras de negócio e gerar resultados prontos para consumo em BI.

O SQL representa a **fonte oficial da verdade**, onde os dados tratados são:
- Validados
- Agregados
- Analisados sob a ótica de negócio

As análises foram organizadas por **tema analítico**, facilitando leitura, manutenção e avaliação técnica.

## Estrutura das análises

Cada subpasta contém:
- Um ou mais arquivos `.sql` com queries documentadas
- (Quando aplicável) screenshots (`.png`) com o resultado das queries
- Um `README.md` explicando o objetivo e a lógica da análise

## Técnicas utilizadas
- CTEs (Common Table Expressions)
- Window Functions (`OVER`, `LAG`, `RANK`)
- Agregações e métricas financeiras
- Queries legíveis e bem documentadas

Esta organização simula um ambiente real de Analytics / BI em SQL Server.
