# Tutorial 2

## Learning Objectives
1. practice search in several popular databases and servers
  * [Entrez Gene](https://www.ncbi.nlm.nih.gov/gene/)
    + [NCBI Sequence Database fields](https://www.ncbi.nlm.nih.gov/books/NBK49540/)
  * [Homologene](https://www.ncbi.nlm.nih.gov/homologene/)
  * [UniProt database collection](https://www.uniprot.org/database/)
    + [UniProt KB](https://www.uniprot.org/)
2. Practise the use of sliding windows
  * [ProtScale](https://web.expasy.org/protscale/)
3. Practise the use of `dotter` program on Linux
  * Check the influence of sliding window size and scoring matrices
  * [RADAR repeat detection](https://www.ebi.ac.uk/Tools/pfa/radar/)

## Links
- [Scoring matirces at NIH FTP site](https://ftp.ncbi.nlm.nih.gov/blast/matrices/)
- [human ACE2 protein](https://www.uniprot.org/uniprot/Q9BYF1.fasta)
- [SARS-CoV-2 Wuhan-Hu-1 complete genome](https://www.ncbi.nlm.nih.gov/nuccore/NC_045512.2)


## Assignment #2

Use the `dotter` software program. Obtain the squid (_Loligo forbesii_) p53 and human p53 protein sequences from UniProt. 
1. Change the substitution matrix from the default (BLOSUM62) to BLOSUM30 (use window size `–W 40`), is there a difference in the plot appearance, explain why?
2. Change the substitution matrix from default to BLOSUM100, (use window size `–W 40`), is there a difference in the plot appearance, explain why?

