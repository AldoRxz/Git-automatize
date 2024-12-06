# Script Ajustado con Git Bash

#!/bin/bash

# Ruta al repositorio local
REPO_PATH="D:/Proyects/git-automatize/Git-automatize"

COMMIT_MESSAGE="Commit automatic daily"

# Fecha actual para añadir
FECHA=$(date +"%Y-%m-%d")

# Moverse al repositorio
cd "$REPO_PATH" || exit

# Crear o actualizar un archivo
echo "Actualizado el $FECHA" >> actualizacion_diaria.txt

git add .

git commit -m "$COMMIT_MESSAGE - $FECHA"

git push