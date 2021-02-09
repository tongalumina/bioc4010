# Tutorial 2

## Setup
1. Launch Ubuntu/WSL2. Following the _`README.md`_ files at this github repository: https://github.com/tongalumina/bioc4010 to download the resources.
3. Start X-server by type `c:\chemistry\xwin\config.xlaunch` in the lower left search box, and click launch the program. An analog clock shall show up on the screen, which indicates the X-server has been successfully launched. There will also be a dialog window titled "Input requested", simply click `Cancel`.
4. _Alternatively_, you can click the 6th icon from the left on the task bar (a black X sign with a circle) to launch the X-Server. Choose `Next` → `Next`, in the 3rd dialog "Extra settings", check the `Disable access control` item, click `Next` → `Finish`. No clock will be shown. You can check whether the X-server has been launched by checking the background programs running at the lower right corner of the screen: click the ^ sign and see if an icon of an X with circle exist.
5. Launch a new Ubuntu terminal
6. Change to _`tut2`_ folder by running `cd bioc4010/tut2` to carry out the tasks of this session.

## Learning Objectives
1. Practice search in several popular databases and servers
  * [Entrez Gene](https://www.ncbi.nlm.nih.gov/gene/)
    + [NCBI sequence database fields](https://www.ncbi.nlm.nih.gov/books/NBK49540/)
  * [Homologene](https://www.ncbi.nlm.nih.gov/homologene/)
  * [UniProt database collection](https://www.uniprot.org/database/)
    + [UniProtKB](https://www.uniprot.org/)
2. Practise the use of sliding windows
  * [ProtScale](https://web.expasy.org/protscale/)
3. Practise the use of `dotter` program on Linux (requires X-server)
  * Check the influence of sliding window size and scoring matrices
  * [RADAR repeat detection](https://www.ebi.ac.uk/Tools/pfa/radar/)

## Links
- [Scoring matrices at NIH FTP site](https://ftp.ncbi.nlm.nih.gov/blast/matrices/)
- [human ACE2 protein](https://www.uniprot.org/uniprot/Q9BYF1.fasta)
- [SARS-CoV-2 Wuhan-Hu-1 complete genome](https://www.ncbi.nlm.nih.gov/nuccore/NC_045512.2)

## Assignment #2

Use the `dotter` software program. Obtain the squid (_Loligo forbesii_) p53 and human p53 protein sequences from UniProt. 
1. Change the substitution matrix from the default (BLOSUM62) to BLOSUM30 (use window size `–W 40`), is there a difference in the plot appearance, explain why?
2. Change the substitution matrix from default to BLOSUM100, (use window size `–W 40`), is there a difference in the plot appearance, explain why?

