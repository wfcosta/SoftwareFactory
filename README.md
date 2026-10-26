# Generic Software Factory (GSF)

Framework de orquestração de agentes agnóstico de plataforma. 
Toda a lógica, contratos e templates da Fábrica residem na pasta oculta .gsf/

## Estrutura do Framework
- .gsf/agents/: Contratos dos agentes (versão 1.0.0).
- .gsf/skills/: Habilidades (git-flow, health-check).
- .gsf/templates/: Modelos de jobs e bugs.
- .gsf/state/: Logs e histórico de execução (ignorado pelo Git).

## Instalação
1. Certifique-se de que seu Harness tem permissão de leitura para .gsf/
2. Mantenha a pasta .gsf/ no seu .gitignore.
3. Use o config.json para referenciar os caminhos.
