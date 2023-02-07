# Assignment for tut1
This assignment tests your knowledge of regular expression and its application in a real-world example.

## The question
Rab geranylgeranyltransferase, or geranylgeranyltransferase II, transfers (usually) two geranylgeranyl
groups to the cysteines at the C-terminus of Rab proteins. The Rab proteins usually terminate in a CC
or CXC motif. For this assignment, you need to search and count the sequences
that matches to the pattern. Write one-line shell commands to finish tasks on
the _`rabs.fa`_ FASTA file in the _`fasta.tgz`_ file.

If you start from scratch:
1. download data using _git_ command (`git clone`) and `cd` into the _tut1_ folder;
2. use `tar xzvf fasta.tgz` command to extract the files;
3. Inspect the _`rabs.fa`_ file and write a bash command line to calculate how
   many Rab GTPases records exist in the _`rabs.fa`_ FASTA file;
4. Write a one-line `grep` command to find which Rab GTPases have the motifs for geranylgeranylation, from the _`rabs.fa`_ file.

## Hints
1. Make sure you display one line before the match to display the name of the Rab GTPases;
2. When match multiple patterns, use extended RegEx, use `grep -E` or `egrep`;
3. Use `--color` option to mark the matched patterns in color on a terminal that supports color;
4. Line counting command is `wc -l`, use command pipeline.

Evaluation will be based on your answers to steps 3 and 4
