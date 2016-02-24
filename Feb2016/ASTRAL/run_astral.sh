#PBS -l nodes=1:ppn=1,mem=16gb -j oe -N astralBS
module load java
ASTRALJAR=/opt/linux/centos/7.x/x86_64/pkgs/ASTRAL/4.7.12/astral.4.7.12.jar
java -Xmx16g -jar $ASTRALJAR -k completed -i ml_trees_bs.concat.tre -b bs_path -r 100 -o astral_bs.tre

