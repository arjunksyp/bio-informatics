#!user/bin/perl
#Mutate DNA using random number generator to randomly select bases to mutate
use strict;use warnings;
my$dna='cccccccccccccccccccccccccccccccccccccccccc';
my$i;
my$mutant;
#seed the random number generator.
#timw|$$ combines the current  tie with current process id
$mutant=mutate($dna);
print"\nMutate dna\n\n";
print"\nhere is the original dna:\n\n";
print"$dna\n";
print"here is thew mutant dna:\n\n";
print"$mutant\n";
#loop
print"\n here are 10 more successive mutations:\n\n";
for($i=0;$i<10;++$i)
{
$mutant=mutate($mutant);
print"$mutant\n";
}
exit;

sub mutate
{
my($dna)=@_;
my(@nucleotides)=('A','C','G','T');
my($position)=randomposition($dna);
my($newbase)=randomnucleotide(@nucleotides);
substr($dna,$position,1,$newbase);
return $dna;
}

sub randomelement
{
my(@array)=@_;
return $array[rand@array];
}

sub randomnucleotide
{
my(@nucleotides)=('A','C','G','T');
return randomelement(@nucleotides);
}

sub randomposition
{
my($string)=@_;
return int(rand(length($string)));
}


