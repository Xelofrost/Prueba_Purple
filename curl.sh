#!/bin/bash

# URL base
base_url="https://geomancia.neocities.org/wordlist-"

# Loop para descargar los archivos desde wordlist-0.txt hasta wordlist-499.txt
for i in $(seq 0 499); do
  url="${base_url}${i}.txt"

  # Comprobar si el archivo existe con curl
  if curl --head --silent --fail "$url" > /dev/null; then
    # Si el archivo existe, descargarlo
    curl --silent -O "$url"
    echo "Archivo wordlist-${i}.txt descargado."
  else
    echo "Archivo wordlist-${i}.txt no encontrado."
  fi
done

wget -O rootlist.txt http://172.233.120.97:3000/styles.css