# Tutorial 2

## Setup, Updated for 2022W

1. Following the _`README.md`_ files at this github repository:
   https://github.com/tongalumina/bioc4010 to download the resources.
2. Launch Linux Mint, launch a new terminal, enter the course folder `cd
   ~/bioc4010`, and update content by running `git pull`
6. Change to _`tut2`_ folder by running `cd tut2` to carry out the tasks of this session.

## Learning Objectives
1. Practice search in several popular databases and servers
  * [Entrez Gene](https://www.ncbi.nlm.nih.gov/gene/)
    + [NCBI sequence database fields](https://www.ncbi.nlm.nih.gov/books/NBK49540/)
  * [Homologene](https://www.ncbi.nlm.nih.gov/homologene/)
  * [UniProt database collection](https://www.uniprot.org/database/)
    + [UniProtKB](https://www.uniprot.org/)
  * Find the fasta sequence of a protein of your interest, or use the human
    [p53 protein sequence in FASTA format](https://www.uniprot.org/uniprot/P04637.fasta)

2. Practise the use of sliding windows in calculating property of the
   sequence, try Hphob. /Kyte & Doolittle.
  * [ProtScale](https://web.expasy.org/protscale/)

1. Practise the use of `dotter` program on Linux:
  * Compare the sequences of `f12.fa` and `tpa.fa`, what do you observe?
    * change the default scoring matrix to BLOSUM30 and BLOSUM80, what do you
      observe? *Hint:* use `dotter -h` to find out how to specify different
      scoring matrix.
  * Compare the sequences of `p53.fa`, `p63.fa`, and `p73.fa` in pairs, what
    do you observe?
  * Check the influence of the sliding window size and tell the difference.
  * Detect internal repeat using `dotter` program at the `wdr5.fa` sequence,
    and also at `preb.fa`, what do you see?
  * Try `wdr5.fa` sequence at [RADAR repeat detection](https://www.ebi.ac.uk/Tools/pfa/radar/)

## Links
- [Scoring matrices at NIH FTP site](https://ftp.ncbi.nlm.nih.gov/blast/matrices/)
- [human ACE2 protein](https://www.uniprot.org/uniprot/Q9BYF1.fasta)
- [SARS-CoV-2 Wuhan-Hu-1 complete genome](https://www.ncbi.nlm.nih.gov/nuccore/NC_045512.2)

## Assignment

Use the `dotter` software program. Obtain the squid (_Loligo forbesii_) p53 and human p53 protein sequences from UniProt. 
1. Change the substitution matrix from the default (BLOSUM62) to BLOSUM30 (use window size `–W 40`), is there a difference in the plot appearance, explain why?
2. Change the substitution matrix from default to BLOSUM100, (use window size `–W 40`), is there a difference in the plot appearance, explain why?

