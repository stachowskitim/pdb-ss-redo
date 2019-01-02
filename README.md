# pdb-ss-redo
calculates fraction of secondary structure PDB model using the DSSP fasta output (available on RCSB). 
This is useful for (1) comparing circular dichroism results to theoretical changes in the protein or
(2) what the secondary structure fractions are with certain regions truncated. 


This mathematica package can be loaded in a notebook:

```
Needs["SScalc`"]
```

Once in the working directory, `SScalc` is executed after defining the name of the DSSP file in fasta format:

```
SScalc["6F7G.txt"]
```

The output gives you the total number of amino acids (as a check), and the percentage of each secondary structure:

```
Amino Acids    103
Helix	       0.796117
Strand	       0.
Turn	       0.0291262
Bend	       0.0485437
```


