# Backup Environment Configurations

Create backups of Conda environment configurations (not the packages themselves, but the specifications to recreate them).

Usage: /backup-envs [environment_name or "all"]

Tasks:
1. Export environment specifications using `conda env export`
2. Create YAML files with explicit package versions
3. Generate requirements.txt files for pip packages
4. Document conda channel configurations
5. Save environment metadata (creation date, purpose, etc.)
6. Create a backup index file listing all backed up environments
7. Store backups in the `backups/` directory with timestamps
8. Compress old backups to save space
9. Verify backup files are valid and can be used for recreation
10. Generate a README documenting how to restore from backups
11. Track backup history for each environment

Store backups with naming convention: `{env_name}_{timestamp}.yml`

Provide a summary of backed up environments and backup file locations.
