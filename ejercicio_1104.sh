      ##Ejercicio 1.10.4
##Leslie Taimal
#1) Escriba un script que, para un archivo csv dado y
# número de columna, imprime:
# - Nombre de la columna
# - Número de valores distintos
# - Valor mínimo
# - Valor máximo

cut -d ',' -f 7 ../data/Buzzard2015_data.csv | head -n 1
cut -d ',' -f 7 ../data/Buzzard2015_data.csv | tail -n +2 | sort | uniq | wc -l
 cut -d ',' -f 7 ../data/Buzzard2015_data.csv | tail -n +2 | sort -n | head -n 1
cut -d ',' -f 7 ../data/Buzzard2015_data.csv | tail -n +2 | sort -n | tail -n 1

