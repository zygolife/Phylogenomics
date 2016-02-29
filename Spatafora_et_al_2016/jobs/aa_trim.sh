module load trimal
for file in *.fasaln
do
 trimal -automated1 -in $file -out $file.trim
done
