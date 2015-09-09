# !usr|bin|perl -w
open(FILE,"ortho.txt");
@ortho=<FILE>;
close(FILE);
$y=0;
open(ofile,">result.txt");
foreach $x(@ortho)
{
	if($y!=0)
	{
		if($y==$x)
		{print ofile "$x";}else{print ofile "========";}
	}
	$y=$x+1;
}
close(ofile;)
exit;
