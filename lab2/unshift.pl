#!/usr/bin/perl


@bases=('A','C','G','T');
$base1=pop@bases;
$base2=shift @bases;
unshift(@bases,$base1,$base2);

print"here's the the element from the end put on the beginning:";
print "@bases\n";
print"========================";
print "\n\n";
