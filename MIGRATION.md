# How to Migrate Out of GSF

If you decide to stop using GSF orchestration:

1. **Keep your source code**: Move everything you developed in the `src/` (or equivalent) directory to a clean root or a new repository.
2. **Delete GSF files**: Safely remove the `.gsf/` directory, `config.json`, and all `GSF_*.md` files.
3. **Clean Git History**: If you want to remove the GSF setup history, consider starting a new Git repository:
   ```bash
   rm -rf .git
   git init
   git add .
   git commit -m "Initial commit after GSF migration"
   ```
4. **Remove Dependencies**: If you used any specific Harness-related wrappers in your code, refactor them back to native standard calls.
