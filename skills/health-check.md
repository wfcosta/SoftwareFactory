# Health Check Skill
Quando o orquestrador travar:
1. Liste arquivos modificados: `git status`
2. Verifique logs de erro: `tail -n 20 error.log`
3. Verifique o estado do job: `cat jobs/<job-id>/inbox.md`
4. Se o erro for persistente, retorne ao Intake para re-especificação.
