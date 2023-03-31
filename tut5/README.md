# MEGA usage
This tutorial introduces the basics of using the [MEGA](https://megasoftware.net/) (Molecular Evolutionary
Genetics Analysis) software.

Last updated for the 2023W semester.

## Launch of the MEGA program
Before launch the MEGA program, remember to update the `bioc4010` git folder
by running `git pull` under `~/bioc4010`.

MEGA version 11.0.11 is installed on the VM. Launch the program by typing
`mega &` in a terminal. The `&` indicate the terminal should run the command
in the background and return to prompt for accepting new commands.

## Build a phylogenetic tree of USP8
USP8 is a ubiquitin-specific protease, mutation of which causes Cushing's
disease. This tutorial will use USP8 sequences as an example to build a
phylogenetic tree.

To save time a pre-compiled FASTA file `USP8.fas` containing the homologs of
USP8 is provided under the `~/bioc4010/tut5` directory.  But if you are
working on a new gene or gene product, use the following methods:

### Collection of sequences

- You can use MEGA build-in tool to add sequences from NCBI BLAST results
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

### Load the data
- Start with `Align` to load the data.
  * Align → Edit/Build Alignment → Create a new alignment.
  * In the New pop-up window "M11: Alignment Explorer", choose Data → Open →
    Retrieve Sequences From File, and select the `USP8.fas` file.

### Multiple sequences alignment (MSA)
- Align the USP8 homolog sequences using the `MUSCLE` alignment algorithm.
  Choose "Neighbor Joining" for the Cluster Method. Change GAP extend penalty
  to -0.03.
- After the sequences are alignmed, remember to save the session, alignment
  session file has a suffix `.mas`.
- Inspect the alignment sequences, and check whether there are strange
  sequences. In this particular case, the _Echinops telfairi_ USP8 sequence
  does not seem to be complete (C-terminal catalytic domain is missing a large
  segment) and should be removed from the list. The _Saccharomyces cerevisiae_
  sequence is very different from other USP8 sequences and should also be
  removed (though the yeast sequence is likely a very remote homolog, further
  analysis is required that is beyond the goal of this tutorial.). Re-align
  the sequences after deletion of the two sequences and save the result.
- Aligned files can be loaded in `Data`.
- In the `Alignment Explorer`, Export the Alignment as a MEGA file `.meg`.
- Close the Alignment Explorer.

### Models
The following is the process to find the model for correcting the observed
substitution for the expected substitution, it will take a very long time to
calculate (depending on the computing power of the computer) so we'll skip
this whole step (stop and abort if you started the model estimation). If you
run this step in a powerful computer using MEGA, you can finish the following
steps:
- Return to the main window, load the MEGA alignment file with suffix `.meg`
  if no data is available; otherwise use the active dataset already loaded.
- In MODELs, select `Find Best DNA/Protein Models (ML)`
- Number of Threads (this is not applicable in the Linux VM), use maximum
  available number if you installed MEGA natively.
- The model with lowest BIC valude is the best model.
- In this particular case the best model is JTT+G+I, JTT is in Model/Method,
  G+I is in Rates and Patterns.

### Distance matrix
This step calculates distance matirx of all USP8 homolog sequences among
different species:
- Select: `Distance` → `Compute pairwise distances...`
- Note down which species is the most distant one from Homo sapiens.

### Phylogeny
We create a quick NJ molecular phylogentic tree based on the alignment.
- Select `Construct/Test Neighbor Joining Tree`
- In the popup dialog, choose `Test of Phylogeny` to be "Bootstrap method",
  and `No.  of Boostrap replications` to be "100".
- Choose "JTT model" as the Substitution Model (check what models are
  available in the list that you are familiar with).
- Gaps/Missing Data Treatment → Partial deletion
- Generate an NJ tree.

### Display of the Tree
- Display the tree in circular mode, and export the displayed tree as an image file (`.png`).
- Remember to save the tree (in `.mts` format)


## Assignment #15
Generate a phylogenetic tree using the `usp8.fas` data provided. Explain what
is the meaning of the numbers on the tree. Indicate which species is the most
distant one from Homo sapiens.

