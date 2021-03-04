# Tutorial 4

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


### Disordered
- Servers
  * [GlobPlot, Statistics-based](http://globplot.embl.de/)
  * [DisEMBL, NN trained on XRD data](http://dis.embl.de)
  * [SPOT-Disorder2, deep NN-based](https://sparks-lab.org/server/spot-disorder2/)


### 3D Structure Prediction
- [Threading](http://bioinf.cs.ucl.ac.uk/psipred/) pDOMThreader 
  * The link also includes Structural Modelling using `Domserf`, `DMPfold`, `BioSerf`
- [RaptorX](http://raptorx.uchicago.edu/): automatic handles long sequences


### AlphaFold
[AlphaFold v.1 from DeepMind](https://github.com/deepmind/deepmind-research/tree/master/alphafold_casp13)
[Alpha Fold v.2](https://github.com/lucidrains/alphafold2)


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

