# Generic Software Factory (GSF)

Framework de orquestração de agentes agnóstico de plataforma.

## Recursos Avançados
- **Protocolo Inbox/Outbox**: Comunicação assíncrona entre subagentes para auditoria.
- **GSF_CONSTRAINTS**: Guardrails de segurança e escopo.
- **Auto-Diagnóstico**: Skills de auto-recuperação (Self-Healing).
- **Versionamento**: Contratos versionados para compatibilidade.

## Estrutura do Workflow
1. O Harness monitora `jobs/<job-id>/inbox.md`.
2. As decisões são registradas em `jobs/<job-id>/outbox.md`.
3. Em caso de falha, use `skills/health-check.md`.
