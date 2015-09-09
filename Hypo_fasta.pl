#usr/bin/perl -w
open(FILE1,"Rv.txt");
@sat =<FILE1>;
$s=@sat;
#print @sat;
close FILE1;

open(FILE2,"Fasta.txt");
@sat1 =<FILE2>;
#print @sat1;
close FILE2;
$outputfile="fasta1.txt";
open(OFILE,">$outputfile");

@Rv=();

for($k=0;$k<$s;$k++)
{
	@Rv[$k]=($sat[$k]=~/(Rv\w+\d?)/);
}

foreach $Rv(@Rv)
{
	$count=0;
	#print "$Rv\n";	
	foreach $fasta(@sat1)
	{
		
		if ($fasta=~/$Rv/)
		{
			push(@x,$count);
		}
		$count++;
	}
}
$z=@x;
for($i=0;$i<$z;$i++)
{
	$y = @x[$i];
	do
	{
		print OFILE $sat1[$y];
		print $sat1[$y];
		$y++;
	}until($sat1[$y]=~/^>.*/);
}
close(OFILE);
exit;