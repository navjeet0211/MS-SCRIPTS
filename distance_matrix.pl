# !usr|bin|perl -w
open(FILE,"distance score.txt");
@main=<FILE>;
$main=join(' ',@main);
$main=~ s/\n//g;
@main=split(' ',$main);
open(OFILE,">Distance_Matrix_gene.txt");
$count=0;
print OFILE "dist_matrix\t";
for($k=1;$k<17;$k++)
{
	
	print OFILE "Organism $k\t";
}
$i=16;
$j=1;
print OFILE "\nOrganism $j\t";
foreach $main(@main)
{
	$count++;
	print OFILE "$main\t";
	if($count%$i==0)
	{
		$j++;
		print OFILE "\n";
		print OFILE "Organism $j\t";

	}
}
close(FILE);
close(OFILE);
exit;

