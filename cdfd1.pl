# !|usr|bin|perl -w
do{
print"\nEnter the file name\n";
$file=<STDIN>;
open(FILE,$file);
@mbtu=<FILE>;
close FILE;
print"\nEnter the output file name\n";
$outfile=<STDIN>;
open(OFILE,">$outfile");
foreach $mbtu(@mbtu)
{	
	@Rv=( $mbtu =~ /(msm\d+)?/g);

	print OFILE "@Rv\n";
}
print"enter 0 if you want to come out of the program\n";
$x=<STDIN>; 
}while($x!=0);
exit;
