# Tutorial 3: Sequence Alignment and Advanced BLAST
Make sure you run the `setup.sh` file under `~/bioc4010` folder to fix a bug.
The following instructions assume you are in the `~/bioc4010/tut3` folder.

## PDB Search
Search in [RCSB PDB website](https://www.rcsb.org/) for "lopinavir" and "ritonavir", and find out:
1. the ligand ID of these two drugs
2. how many structures are associated with these two drugs

## Sequence comparison and BLASTP

### Compare pairwase sequence alignment
Observe the difference in the output of the following three methods:
```
#needleman alignment
needle 3ogq.fa 4l1a.fa

#waterman alignment
water 3ogq.fa 4l1a.fa

#BLASTP
blastp -query 3ogq.fa -subject 4l1a.fa
```

### BLASTP
- compare two sequence sets:
```
blastp -query ab1-targets.fa -subject ab1-targets.fa -outfmt 6
```

- search for closest match of `4l1a.fa` in ritonavir target sequences
```
blastp -query 4l1a.fa -subject rit-target.fa -outfmt 6
```
## CLUSTALX
The documentation of clustalx program can be found  on [unl.edu]() website.
Invoke the program in Ubuntu Terminal using `clustalx`.

1. `File` → `Load sequence`, load `nosplitusp.fa` file.
2. `Alignment` → `Do a complete alignment` will generate a guide tree (a `.dnd` file ) and an alignment file (`.aln`).
3. `Trees` → `Draw Tree` will use N-J method to generate a unrooted tree.

The guide tree and N-J tree files are in Newick format. 

