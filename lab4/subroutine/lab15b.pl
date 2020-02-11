#!/usr/bin/perl

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
