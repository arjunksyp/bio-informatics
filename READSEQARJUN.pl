# TO READ PROTEIN SEQUENCE DATA FROM A FILE USING PERL
#!/user/bin/perl
$proteinfilename ='ak.pep';
open(PROTEINFILE,$proteinfilename);
$protein =<PROTEINFILE>;
print "1st line\n";
print $protein,"\n";
$protein =<PROTEINFILE>;
print "2nd line\n";
print $protein,"\n";
close PROTEINFILE;
exit;
