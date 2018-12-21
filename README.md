# pdb-ss-redo
calculates fraction of secondary structure PDB model from the DSSP fasta output (available on RCSB). 
This is useful when truncating certain regions of a PDB model and want to see what the resulting secondary structure populations are. 


This mathematica package can be loaded in a notebook:
'''
Needs["SScalc`"]
'''

Options for 'SScalc' can be explored:

'''
?SScalc
'''

Once in the working directory, 'SScalc' is executed after defining the file name:

'''
SScalc["6F7G.txt"]
'''

The output gives you the total number of amino acids (as a check), and the populations of each secondary structure:

'''
103 Amino Acids
{Helix,0.796117}
{Strand,0.}
{Turn,0.0291262}
{Bend,0.0485437}
'''


