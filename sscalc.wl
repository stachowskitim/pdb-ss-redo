(* ::Package:: *)

BeginPackage["Sscalc`"]

sscalc::usage="Calculates secondary structure content from fasta file, data"

Begin["`Private`"]

calc[data_]:=
Module[
{string,l,rows4ss,rows4aa,aalist,aacount,sscount},

string = ToString/@Import[data,"Table"];
l = Length[string];
rows4ss = Table[x,{x,3,l,2}];
rows4aa = Table[x,{x,2,l,2}];
aalist = LetterCounts/@string//Normal;
aacount = aalist[[All,All,2]]//Flatten//Total;
sscount = LetterCounts/@string[rows4ss];
Print@@sscount;
Print@@sscount//#/aacount&//N;

]


End[]

EndPackage[]


