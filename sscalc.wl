(* ::Package:: *)

BeginPackage["SScalc`"]

sscalc::usage="Calculates secondary structure content from fasta file, data"

Begin["`Private`"]

SScalc[data_]:=
Module[
{datain,string,l,rows4ss,rows4aa,aalist,aacount,sslist,frac,helixcount,strandcount,turncount,bendcount},

string=ToString/@Import[data,"Table"];
l = Length[string];
rows4ss = Table[x,{x,3,l,2}];
rows4aa = Table[x,{x,2,l,2}];
aalist = LetterCounts/@string[[rows4aa]]//Normal;
aacount = aalist[[All,All,2]]//Flatten//Total;
sslist =Characters/@string[[rows4ss]]//Flatten;
helixcount =StringCount[sslist,"H"]//Total;
strandcount = StringCount[sslist,"E"]//Total;
turncount = StringCount[sslist,"T"]//Total;
bendcount = StringCount[sslist,"S"]//Total;
frac = N@{{"Helix",helixcount/aacount},{"Strand",strandcount/aacount},{"Turn",turncount/aacount},{"Bend",bendcount/aacount}};
TableForm[PrependTo[frac,{"Amino Acids",aacount}]]//Print;
];


End[]

EndPackage[]


