#!/bin/bash
echo "🛰️ Envoi des fichiers .wav vers transfer.sh..."

for file in *.wav; do
  url=$(curl --upload-file "$file" https://transfer.sh/"$file")
  echo "✅ $file : $url"
done
