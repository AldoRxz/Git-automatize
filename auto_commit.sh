# Script Ajustado para Windows con Git Bash

#!/bin/bash

# Ruta al repositorio local
REPO_PATH="D:/Proyects/git-automatize/Git-automatize"

# Mensaje del commit
COMMIT_MESSAGE="Commit automatic daily"

# Fecha actual para añadir al commit
FECHA=$(date +"%Y-%m-%d")

# Moverse al repositorio
cd "$REPO_PATH" || exit

# Crear o actualizar un archivo para que haya algo que commitear
echo "Actualizado el $FECHA" >> actualizacion_diaria.txt

# Añadir cambios
git add .

# Hacer commit
git commit -m "$COMMIT_MESSAGE - $FECHA"

# Subir cambios
git push
