# Generic Software Factory (GSF)

Framework de orquestração de agentes agnóstico de plataforma, baseado em protocolos de automação.

## O que é?
O GSF não é um software que se instala com `setup.exe` ou `npm install`. Ele é uma **base de conhecimento (contexto)** que você entrega a um Agente de IA (Harness) para que ele saiba como gerenciar projetos, disparar subagentes e manter a qualidade do código seguindo padrões industriais.

## Pré-requisitos
Para que um Harness utilize o GSF, a máquina precisa de:
1. **Git**: Para controle de versão e persistência do trabalho.
2. **Harness (Executor)**: Um agente de IA (Hermes, Claude Code, etc.) com capacidade de ler arquivos, executar comandos no terminal e seguir instruções.
3. **Chave de API**: Credenciais configuradas no seu Harness (OpenAI, Anthropic, etc.).

## Passo a Passo para Instalar e Usar

### 1. Clonar o Framework
No seu terminal:
```bash
git clone https://github.com/wfcosta/SoftwareFactory.git
cd SoftwareFactory
git checkout refactor/generic-software-factory
```

### 2. Preparar o Harness
Abra o seu Harness (ex: `hermes` ou `claude`) apontando para a pasta:
```bash
# Exemplo se estiver usando um agente CLI
hermes --context .
```

### 3. Iniciar a Missão
Dentro da sessão do seu agente, carregue o protocolo principal:
> "Leia o `GSF_FACTORY.md` e o `config.json`. Assuma o papel de Orquestrador da Fábrica e prepare-se para receber um objetivo de desenvolvimento."

### 4. Fluxo de Operação
O GSF segue um fluxo cíclico rigoroso:
1. **Intake (Entrada)**: O orquestrador analisa o objetivo via `templates/job-template.md`.
2. **Orquestração (DAG)**: O orquestrador define a ordem de execução (Spec -> Builder -> Reviewer).
3. **Dispatch**: O orquestrador dispara subagentes para cada função, consultando os contratos em `agents/`.
4. **Execução e Skill**: Os subagentes utilizam a pasta `skills/` para realizar tarefas técnicas (git-flow, etc.).
5. **Gateway**: A cada etapa, o orquestrador pausa para verificação humana ou automática (Gates).
6. **Publish**: O orquestrador finaliza o trabalho abrindo um Pull Request ou entregando o artefato.

## Protocolo de Orquestração
O sistema funciona via mensagens (Event-Driven):
- `[REQUEST_PLAN]`: Define o escopo.
- `[DISPATCH_AGENT]`: Inicia subagente.
- `[WAIT_FOR_SIGNAL]`: Aguarda tarefa.
- `[GATE_RESOLVE]`: Valida entrega.

---
*Para dúvidas operacionais, consulte `GSF_FACTORY.md` dentro deste diretório.*
