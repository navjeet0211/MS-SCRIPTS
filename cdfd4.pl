# !|usr|bin|perl -w
open(File1,"1.txt");
@ortho = <File1>;

close(File1);
$file="Mycobacterium tuberculosis H37Rv_1.txt";
open(FILE,$file);
@mbtu=<FILE>;

close FILE;

$outfile="Metabolic Ortholog Genes.txt";
open(OFILE,">$outfile");
foreach $mbtu(@mbtu)
{	
	@mbt = ($mbtu=~/(Rv\d+)/);
	print @mbt;

		

	foreach $ortho(@ortho)
	{
		if ($ortho=~/@mbt/)
		{
			$mbtu =~  s/(Rv\d+\w?)/$ortho/g;
			print OFILE $mbtu;
		}
	}
	
}
close (OFILE);
exit;
