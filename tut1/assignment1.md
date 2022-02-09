# Assignment 1
This assignment tests your knowledge of regular expression and its application in a real-world example.

## The questions
Rab geranylgeranyltransferase, or geranylgeranyltransferase II, transfers (usually) two geranylgeranyl
groups to the cysteine(s) at the C-terminus of Rab proteins. The Rab proteins usually terminate in a CC
or CXC motif.

If you start from scratch:
1. download data using _git_ and cd into the _tut1_ folder

Write one line shell command to finish the following tasks on the _`rabs.fa`_ FASTA file in the _`fasta.tgz`_ file.
use `tar xzvf fasta.tgz` command to extract the files (8 marks in total).
2. Write a bash command line to calculate how many Rab GTPases records exist in the _`rabs.fa`_ FASTA file.
3. Write a one-line command to find which Rab GTPases have motifs for geranylgeranylation, from the _`rabs.fa`_ file.

## Hints
1. make sure you display one line before the match to display the name of the Rab GTPases.
2. when match multiple patterns, use extended RegEx, use `grep -E` or `egrep`.
3. use `--color` option to mark the matched patterns in color on a terminal that supports color. 
