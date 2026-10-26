# Generic Software Factory (GSF) — Protocolo de Orquestração

O GSF é um protocolo de automação de software agnóstico de plataforma. Não depende de um binário específico, mas sim da implementação de um "Harness" (agente ou sistema) que interprete este protocolo.

## Protocolo de Interação (Event-Driven)
O Harness deve observar os arquivos de estado e responder às seguintes ações:
- [REQUEST_PLAN]: O agente de orquestração gera um plano baseado nos requisitos.
- [DISPATCH_AGENT]: O harness inicia um subagente especializado (builder, reviewer, etc.) fornecendo o contrato correspondente em `agents/`.
- [WAIT_FOR_SIGNAL]: O harness suspende a execução e monitora a conclusão do subagente.
- [GATE_RESOLVE]: O harness valida o resultado de uma etapa (ex: aprovação de PR).

## Runtime Agnóstico
O Harness deve manter um log de estado em `jobs/<job-id>/inbox.md` para permitir que qualquer LLM retome a execução caso seja interrompido.
