#!/usr/bin/perl-w
#searching for motifs
print"please type the filename of the protein sequenc data:";
$proteinfilename = <STDIN>;
#remove the new line from the protein filenam
chomp $proteinfilename;
#open the file,or exit
unless (open(PROTEINFILE, $proteinfilename)){
print"cannot open file\"$proteinfilename\"\n\n";
exit;
}
#read the protein sequence data from the file,and store it into the array variable @protein
@protein=<PROTEINFILE>;
#close the file-we've read all the data into @protein now.
close PROTEINFILE;
#put the protein sequence data ino a single string, as its easier to search for a motif in a string than in an array of
#lines(what if the motif occurs over a line break?)
$protein=join('',@protein);
#remove whitespace
$protein=~s/\s//g;
#in loop, ask the user for a motif, search for the motif, and report if it was found.
do{
print"enter a motif to search for:";
$motif = <STDIN>;
#remove the newline at the end of $motif
chomp $motif;
#look for the motif
if($protein=~/$motif/)
{
print"i found it!\n\n";
}
else
{
print"i coudn't find it.\n\n";
#exit on an empty user input
}
}
until($motif =~/^\s*$/);
#exit the program
exit; 
