# !|usr||bi|perl -w
open(FILE,"KEGG5.txt");
@Coryne=<FILE>;
close(FILE);
open(OFILE,">KEGG6.txt");
foreach $line(@Coryne)
{ 

	$line=~ s/(\d+)//;
	print OFILE $line;
}
close(OFILE);
exit;