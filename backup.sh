#! /bin/bash
diretorioBackup = "/home/gpassos/devOps"
nome_arquivo="backup_$(date +%Y%m%d_%H%M%S).tar.gz"
tar -czf "$nome_arquivo" "$diretorioBackup"
echo "Backup concluido em $(date +%Y/%m/%d_%H:%M:%S)"