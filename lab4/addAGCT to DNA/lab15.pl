#!/usr/bin/perl
#A program with a subroutine to append ACGT to DNA
#The original DNA
$dna='CGACGTCTTCTCAGGCGA';
#The call to the subroutine "addACGT".
#The argument being passed in is $dna; the result is saved in $longer_dna
$longer_dna=addACGT($dna);
print"I added ACGT to $dna and got $longer_dna\n\n";
exit;
#here is the defination for subroutine "addACGT"
sub addACGT{
my($dna)=@_;
$dna.='ACGT';
return $dna;
}

##=============================================

my@i=('1','2','3');
my@j=('a','b','c');
print"in main program before calling subroutine: i="."@i\n";
print"in main program before calling subroutine: j="."@j\n";
reference_sub(\@i,\@j);
print"in main program after calling subroutine: i="."@i\n";
print"in main program after calling subroutine: j="."@j\n";
exit;

sub reference_sub{
my($i,$j)=@_;
print"in subroutine: i="."@$i\n";
print"in subroutine: j="."@$j\n";
push(@$i,'4');
shift(@$j);
}
exit;
