########################################################
########################################################
#####								   #####
##### Program to calculate Correlation_coefficient #####
#####								   #####
########################################################
########################################################

# !usr|bin|perl -w
open(FILE,"cluster1.txt");
while (<FILE>) 
{
	@tmp = split;
	$n=@tmp;
	push @AoA, [ @tmp ];
}
open(OFILE,">Distance result.txt");    
print OFILE "Distance score\tBetween\n";
foreach my $l (0..$#AoA) {
foreach my $o (0..$#AoA) {
unless ($l == $o)
{
	@a = ();
	@b = ();
	for ($m=0; $m<$n; $m++) 
	{ 
		push @a, $AoA[$l][$m];
		push @b, $AoA[$o][$m];
	}
		#print OFILE "@a\n@b";
		$j=$l+1;
		$q=$o+1;
		$result=((($n*sumXY(\@a,\@b))-(sumX(@a)*sumX(@b)))/sqrt((($n*squareX(@a))-(sumX(@a)*sumX(@a)))*(($n*squareX(@b))-(sumX(@b)*sumX(@b)))));
		$distance = (1-$result);
		print OFILE "$distance\tOrg$j-Org$q\n"; 
		
}
}
}
sub sumXY
{
	$XY=0;
	$k=0;
	my($a,$b)=@_;
	for($i=0;$i<$n;$i++)
	{
		$k=(@$a[$i]*@$b[$i]);
		$XY += $k;
	}
	print $XY;
	return($XY);
}
sub sumX
{
	my(@a)=@_;
	$x = 0;
	for($i=0;$i<$n;$i++)
	{
		$x += @a[$i];  
	}
	return($x);
	
}
sub squareX
{
	my(@a)=@_;
	$z = 0;
	$s = 0;
	for($i=0;$i<$n;$i++)
	{
		$z = (@a[$i]*@a[$i]);  
		$s += $z;
	}
	return($s);
}

close(OFILE);

exit;
open(FILE2,"Distance result.txt");
@main=<FILE2>;
@main =sort(@main);
close(FILE2);
open(OFILE2,">Distance result.txt");
print OFILE2 "@main";
close(OFILE2);



	