#!/bin/bash

# URL base
base_url="https://geomancia.neocities.org/wordlist-"

# Loop para descargar los archivos desde wordlist-0.txt hasta wordlist-499.txt
for i in $(seq 0 499); do
  url="${base_url}${i}.txt"

  # Comprobar si el archivo existe
  if wget --spider "$url" 2>/dev/null; then
    # Si el archivo existe, descargarlo
    wget "$url" -O "wordlist-${i}.txt"
    echo "Archivo wordlist-${i}.txt descargado."
  else
    echo "Archivo wordlist-${i}.txt no encontrado."
  fi
done
