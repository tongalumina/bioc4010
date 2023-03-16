# Tutorial 4
Updated for 2022W semester and on. This tutorial takes at least two one-hour dry
lab sessions. In 2023W semester, each dry lab session is 1.5 hours.

## Resources
This section includes links to websites that are useful for protein analysis that can be used in the final project.

### Seconary Structure Prediction
- [SOV calculation](http://proteinmodel.org/AS2TS/SOV/sov.html)
- Prediction servers still up and running
  - [APSSP](http://crdd.osdd.net/raghava/apssp/)
  - [JPred](http://www.compbio.dundee.ac.uk/jpred/index.html)
  - [Porter](http://distilldeep.ucd.ie/porter/)
  - [PSIPred](http://bioinf.cs.ucl.ac.uk/psipred/)
  - [Proteus](http://www.proteus2.ca/proteus/)
  - [SSpro](http://download.igb.uci.edu/sspro4.html)
  - [PHD](https://npsa-prabi.ibcp.fr/cgi-bin/npsa_automat.pl?page=/NPSA/npsa_phd.html)
  - [Consensus SS prediciton](https://npsa-prabi.ibcp.fr/cgi-bin/npsa_automat.pl?page=/NPSA/npsa_seccons.html), including GOR 4, PHD
  - [Predictprotein](https://predictprotein.org/)

### Disordered Prediction
- Servers
  * [GlobPlot, Statistics-based](http://globplot.embl.de/)
  * [DisEMBL, NN trained on XRD data](http://dis.embl.de)
  * [SPOT-Disorder2, deep NN-based](https://sparks-lab.org/server/spot-disorder2/)

### 3D Structure Prediction: Homology modelling and Threading
- [Threading](http://bioinf.cs.ucl.ac.uk/psipred/) pDOMThreader
  * The link also includes Structural Modelling using `Domserf`, `DMPfold`, `BioSerf`
- [RaptorX](http://raptorx.uchicago.edu/): automatic, handles long sequences
- [SWISS-Model](https://swissmodel.expasy.org/) building homology model
- [Rossetta Foldit](https://www.rosettacommons.org/docs/latest/FoldIt)

### AlphaFold
- [The impact of AlphaFold2 one year on](https://www-nature-com.ledproxy2.uwindsor.ca/articles/s41592-021-01365-3),
  UWindsor students can request a copy through the [Racer system](https://racer1.scholarsportal.info/)
- [ColabFold](https://github.com/sokrypton/ColabFold) developed by the Steinegger group.
- The Jupyter Notebook version of [AlphaFold2 on Google Colab](https://colab.research.google.com/github/sokrypton/ColabFold/blob/main/beta/AlphaFold2_advanced.ipynb)

### Structure alignment
- [Dali Server](http://ekhidna2.biocenter.helsinki.fi/dali/)
- [FATCAT](https://fatcat.godziklab.org/)
- [PDBeFold](https://www.ebi.ac.uk/msd-srv/ssm/)

### PDB related
- [PDB Format description](http://www.wwpdb.org/documentation/file-format-content/format33/v3.3.html)
- [Modelling and visualization softwares](https://proteopedia.org/wiki/index.php/Molecular_modeling_and_visualization_software)
- [PDB Molecular Graphics Programs](http://pdb101.rcsb.org/learn/guide-to-understanding-pdb-data/molecular-graphics-programs)

## Practices

### DSSP

Calculation of secondary structure using `dssp`.
1. update the content in a Ubuntu terminal: `cd ~/bioc4010; git pull` 
2. enter the `tut4` folder: `cd tut4`
3. run `dssp 1UBQ.pdb` to calculate SS of the ubiquitin structure (PDB code:
   1UBQ)
4. if you want to download and calculate another structure, use a script under
   `tut4` named `getpdb.sh`. To use the script, make sure it is executable by typing `ls -l` in the tut4 folder and check whether it has a permission of `-rwxr--r--`. If there is no "x" (meaning executable) in the permission, type `chmod u+x getpdb.sh` first to make it executable. Then when in the `tut4` folder,  run `./getpdb.sh 2r2o` will download the strucuture
   cooridnate for pdb item 2R2O, and the FASTA format file from [RCSB](https://www.rcsb.org/structure/2r2o). After downloading the pdb file, you can run `dssp 2R2O.pdb` to calculate the secondary structures of 2R2O.

### PyMOL
You can get an educational version from [PyMOL.org](https://PyMOL.org/edu/?q=educational/) and install it on your own
laptop for Molecular Graphics. For this tutorial, the PyMOL has already been installed in the Virtual Machine. First download and read the [Molecular
Graphics using PyMOL instructions](./MolecularGraphicsWithPyMOL.pdf) and undertstand the background and the tasks.
You have to save the PyMOL instruction file by clicking right-button and save it. And open it using Microsoft Word. Or if you clicked the link, then you should click the "view raw" in the openned page to save the file for viewing in Microsoft Word.

- Launch of the program: type `pymol` in the terminal.
- Get familiar with the PyMOL interface and knows how to manipulate a
  molecule.
- Follow the instructions in the above document and finish all the tasks.
- Try run `dss` command in PyMOL when a structure is loaded and shown in
  `cartoon` mode.
- Finish assignment #12 posted on [BrightSpace](https://brightspace.uwindsor.ca).

### AlphaFold: Assignment #13
- Read and follow the instructions of the Jupyter Notebook version of [AlphaFold2 on Google Colab](https://colab.research.google.com/github/sokrypton/ColabFold/blob/main/beta/AlphaFold2_advanced.ipynb)
- Predict the structure of the sequence in the `fish.9x.ubl.fa` file, which is
  the putative ubiquitin-like domain of zebrafish Usp9X protein.
- Calculate the sequence identity of the putative UBL domain of the zebrafish Usp9x with human Usp9x 
- Choose the structure ranked number #1, compare with predicted structure with
  that of [PDB 5VBD](https://www.rcsb.org/structure/5vbd), align the two
  structures in PyMOL, describe any difference you see and explain why a high
  sequence identity does not yield an identical structure.

**Hint**: When you download the structure of PDB 5VBD, download from the RCSB database and choose the Biological Assembly 2 from the database, which contains two copies of the molecules. The experimentally determined structure is a domain-swapped dimer in the solution.

## Todo
- Convert the PyMOL guide into markdown format
- Add instructions for using PyMOL to store a session, and different scenes,
  exporting figures.
