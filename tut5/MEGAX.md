# MEGAX usage
This tutorial introduces the basics of using MEGAX.

## Launch of the program
MEGAX version 10.2.2 is installed on the VM. Launch program by clicking the
[x] icon on the taskbar.

## Using USP8 as an example
To save time use the accompanying `USP8.fa` file. Either use git command or
download from github.com. But if you are working on a new gene, use the
following methods.

### Collection of sequences

- You can use MEGAX build-in tool to add sequences from NCBI BLAST results
- Use different databases, e.g.
  [Homologene](https://www.ncbi.nlm.nih.gov/homologene), [Ensembl](https://ensembl.org) (search for a gene, downloads orthologues)
- [RNA: Rfam](https://rfam.xfam.org/)
- [Ribosomal database](https://rdp.cme.msu.edu/)
- Proteins: Pfam, InterPro
- Virus: Reference Viral Database, [Virus Pathogen
  Resource](https://www.viprbrc.org/),GISAID (global initiative on sharing of
  all flu data), CoronaVirus database from WHO and [nextstrain](https://nextstrain.org)
- How to find more distantly related homologs?
  * search for homologous proteins instead of using DNA sequences

#### Criteria for choosing sequences to be added (from Barry G. Hall)
  * Is that species already added?
    + Yes, go on to the next sequences
    + No, have 4 species of that genus already?
      + Yes, go on to next sequence
      + If No, is the query _coverage_ < 85%?
        + Yes, go on to next sequence
        + No, is e-value > 0.0001 (criteria for homology)
          + Yes, go on to the next sequence
          + No, add the sequence
  * No more than 1 sequence from any species, no more than 4 species from any
    genus.

## MSA
- Start with `Align` to load the data.
- Use `MUSCLE` alignment. Can use the defaults.
- Remember to save the session, alignment file has suffix `.mas`.
- Aligned files can be loaded in `Data`.
- In the `Alignment Explorer`, Export the Alignment as a MEGA file `.meg`.

### Models
- You need to load the MEGA alignment file with suffix `.meg`.
- `Find Best DNA/Protein Models  (ML)`
- Number of Threads, choose **2**.
- This will takes about half an hour to finish.
- The model with lowest BIC valude is the best.

### Phylogeny
- select `Construct/Test Maximum Liklihood Tree`
- Phylogeny Test → Test of Phylogeny → Bootstrap, use a value between 100-
  2000
- In this case the best model is JTT+G+I, JTT is in Model/Method, G+I is in
  Rates and Patterns
- Gaps/Missing Data Treatment → Partial deletion
- Generates an NJ tree.
- Remember to save the tree (`.mts`)

### Display of the Tree






