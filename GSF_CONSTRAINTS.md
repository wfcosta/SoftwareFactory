# GSF Guardrails (Restrições Globais)
- Segurança: Nunca exponha chaves de API.
- Escopo: Edite apenas arquivos dentro de `src/` ou pastas autorizadas.
- Testes: Toda mudança no Builder deve ser validada por testes antes do commit.
- Transparência: A cada checkpoint, atualize o log em `jobs/<job-id>/inbox.md`.
- Alucinação: Se não souber como executar uma tarefa, pare e solicite auxílio via `[GATE_RESOLVE]`.
