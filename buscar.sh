
#!/bin/bash
trap  ''  2  20
clear
printf 'Escribe el nombre completo del archivo: '
read -r archivo
printf 'Ingresa la ruta absoluta del directorio donde quieres buscar: '
read rutaabs
cd $rutaabs

if find . -maxdepth 1 -name "$archivo" -print -quit | grep -q . 
then
  echo "Archivo encontrado"
else 
  echo "Archivo no encontrado"
fi