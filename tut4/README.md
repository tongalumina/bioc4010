# Tutorial 4
Update for 2022W semester. This tutorial shall be finished in two one-hour dry
lab sessions.

## Resources
This section includes links to websites that are useful for protein analysis.

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
- The Jupyter Notebook version of [AlphaFold2 on Google
  Colab](https://colab.research.google.com/github/sokrypton/ColabFold/blob/main/beta/AlphaFold2_advanced.ipynb)

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
1. update content in Ubuntu terminal: `cd ~/bioc4010; git pull`
2. enter `tut4` folder: `cd tut4`
3. run `dssp 1UBQ.pdb` to calculate SS of the ubiquitin structure (PDB code:
   1UBQ)
4. if you want to download and calculate another structure, use a script under
   `tut4` named `getpdb.sh`, e.g. `getpdb.sh 2r2o` will download strucuture
   cooridnate and FASTA format file from [RCSB](https://www.rcsb.org/structure/2r2o), and run `dssp` to calculate
   secondary structures.

### PyMOl
You can get an educational version from [PyMOL.org](https://PyMOL.org/edu/?q=educational/) and install it on your own
laptop for Molecular Graphics. For this tutorial, First read the [Molecular
Graphics using PyMOL instructions](./MolecularGraphicsWithPyMOL.docx) and undertstand the background and the tasks.

- Launch of the program: type `pymol` in the terminal.
- Get familiar with the PyMOL interface and knows how to manipulate a
  molecule.
- Follow the instructions above and finish all the tasks.
- Try run `dss` command in PyMOL when a structure is loaded and shown in
  `cartoon` mode.
- Finish assignment #12 posted on Blackboard.
