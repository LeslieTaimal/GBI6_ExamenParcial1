  # ejercicio_1102.sh
#Leslie Taimal
head -n 3 ../data/Gesquiere2011_data.csv
cut -f 1 ../data/Gesquiere2011_data.csv | head -n 3
cut -f 1 ../data/Gesquiere2011_data.csv | grep -c -w 3
cut -f 1 ../data/Gesquiere2011_data.csv | grep -c -w 27
bash count_baboons.sh ../data/Gesquiere2011_data.csv 27
tail -n +2 ../data/Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq
myIDS=`tail -n +2 ../data/Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq`
for id in $myIDS
do
    mycounts=`bash count_baboons.sh ../data/Gesquiere2011_data.csv $id`
    echo "ID:" $id "counts:" $mycounts
done
bash count_all_baboons.sh

