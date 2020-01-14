#l/usr/bin/perl
#to transcribe DNA into RNA
$DNA='1234';
$RNA=$DNA;
$RNA=~s/4/5/g;
print"transcribed RNA=$RNA";

exit
