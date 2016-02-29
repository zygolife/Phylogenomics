#PBS -l nodes=1:ppn=1,mem=16gb -j oe -N astralnobs
module load java
ASTRALJAR=/opt/linux/centos/7.x/x86_64/pkgs/ASTRAL/4.7.12/astral.4.7.12.jar
java -Xmx16g -jar $ASTRALJAR -i ml_trees_bs.concat.tre -o astral.nobs.out.tre


