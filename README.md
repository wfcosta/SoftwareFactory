# Generic Software Factory (GSF)

A Software Factory Genérica é um framework agnóstico de harness projetado para orquestrar fluxos de trabalho de desenvolvimento de software utilizando agentes inteligentes. Ela permite que qualquer plataforma de automação (Hermes, Claude Code, GitHub Copilot, etc.) utilize um conjunto padronizado de instruções e contratos para disparar agentes.

## Estrutura da Factory

A factory utiliza uma abordagem baseada em diretórios e arquivos Markdown, onde a lógica é ditada pelos contratos definidos nos arquivos `agents/`.

- `agents/`: Contratos e diretrizes para cada agente (ex: `intake.md`, `builder.md`).
- `templates/`: Modelos para bugs, jobs e respostas.
- `REGISTRY.md`: Registro de agentes disponíveis.

## Como instalar em seu Harness

1. Clone este repositório no seu ambiente de trabalho ou adicione-o como uma dependência de conhecimento (contexto) do seu agente/harness.
2. Certifique-se de que o seu harness tenha permissão de leitura sobre a pasta `agents/` e `templates/`.
3. Configure o seu harness para carregar os arquivos dentro da pasta `agents/` como "System Prompts" ou "Tools" dependendo da capacidade do seu harness.

## Fluxo de Operação

1. **Intake (Entrada):** O usuário envia um pedido. O agente de Intake (via `agents/intake.md`) analisa o pedido, solicita esclarecimentos e refina os requisitos.
2. **Orquestração:** O harness utiliza o arquivo de configuração para entender quais agentes devem ser acionados.
3. **Execução:** O harness delega as subtarefas aos agentes especializados (`builder`, `reviewer`, etc.).
4. **Finalização:** O agente de Review entrega o resultado conforme os padrões de qualidade definidos.

## Exemplo de Prompt de Teste

Para iniciar um fluxo, utilize o seguinte prompt no seu harness após carregar este repositório:

"Baseado na documentação de Generic Software Factory, assuma o papel do Agente de Intake. O meu pedido é: [insira aqui a tarefa, ex: 'Criar um endpoint GET /health']. Analise, faça as perguntas necessárias para refinar este pedido e prepare o plano de execução."
