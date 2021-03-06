﻿# Tutorial 4
[TOC]

## Resources

### Seconary Structure Prediction
- [SOV calculation](http://proteinmodel.org/AS2TS/SOV/sov.html)
- Servers still up and running
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
- [Alpha Fold v.1 source code from DeepMind](https://github.com/deepmind/deepmind-research/tree/master/alphafold_casp13)
- [Alpha Fold v.2 Democratization Project](https://github.com/lucidrains/alphafold2)

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
   cooridnate and FASTA format file from [RCSB](https://www.rcsb.org/structure/2r2o).

### PyMOl
- You can get an educational version from [PyMOL.org](https://PyMOL.org/edu/?q=educational/)
- Launch of the program:
  * search `PyMOL` in the Search Box, and choose/click on _Run command_  to
    invoke the program.
  * Keep in mind this is a native Windows program, not an app on the Ubuntu
    subsystem.
- further instructions to be updated.
- Save output:
  * in the PyMOL `File` → `Export Image As ...` menu items save the image as
    PNG, in the pop-up dialog, save the file to a folder different from the
    default, which is `C:\Windows\System32`. You can choose `This PC` →
    `Downloads` and e-mail it or save it to the `Z:\` drive, which is supposed
    to be your host computer if you are using the `VMWare Client` software to
    connect to the VM.
