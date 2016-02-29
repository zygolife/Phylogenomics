
Instructions for running here
=============================

Protein databases are needed for this to be run from scratch.
They would be located in the folder 'pep' and the list of these should be put into 
'list' file.

1. Search HMM of each model against each protein with hmmsearch
jobs/do_hmmsearch.Roz200.sh

2. Get the best hit from each search
make_get_best_hits.Roz200.sh

3. Build a file for each ortholog
make_unaln.Roz200.sh

4. Align the ortholog to the HMM model with hmmalign. trim with trimal
hmm_align.Roz200.sh
- an alternative is to use do_aln_array.sh (running from the aln/Roz200 dir) to use muscle for denovo alignment

5. Concatenate the genes into a superalignment
combine_make_superaln.Roz200.sh

6. Run RAxML building
do_raxml_nofilt.sh

7. Run individual gene trees (symlink the aln folder or uncompress what is in there)
do_raxml_Roz200_genetree_fromTrim.sh

