#PBS -l nodes=1:ppn=64,walltime=300:00:00,mem=96gb -N raxml.splus -j oe
module load RAxML/8.2.4

CPU=48

if [ $PBS_NUM_PPN ]; then
 CPU=$PBS_NUM_PPN
fi

raxmlHPC-PTHREADS-SSE3  -N autoMRE -T $CPU -o Capsaspora_owczarzaki_ATCC_30864.v2 -N 100 -x 121 -f a -p 123 -m PROTGAMMAAUTO -s all.Roz200_filt_denovo_longnames.fasaln -n ZygoMax.2Feb16.filt_denovo
