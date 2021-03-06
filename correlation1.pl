########################################################
########################################################
#####								   #####
##### Program to calculate Correlation_coefficient #####
#####								   #####
########################################################
########################################################

# !usr|bin|perl -w
open(FILE,"cluster.txt");
while (<FILE>) 
{
	@tmp = split;
	$n=@tmp;
	push @AoA, [ @tmp ];
}
open(OFILE,">result.txt");    

for ($l=0; $l<22; $l++)
{
	@a = ();
	@b = ();
	for ($m=0; $m<$n; $m++) 
	{ 
		push @a, $AoA[$l][$m];
		push @b, $AoA[$l+1][$m];
	}
		#print OFILE "@a\n@b";
		$j=$l+1;
		$q=$l+2;
		$result=((($n*sumXY(\@a,\@b))-(sumX(@a)*sumX(@b)))/sqrt((($n*squareX(@a))-(sumX(@a)*sumX(@a)))*(($n*squareX(@b))-(sumX(@b)*sumX(@b)))));
		$p=sumX(@a);
		$r=sumX(@b);
		print OFILE "No. of elements=$n\tSumXY=$XY\tSumX=$p\tSumY=$r\t";
		print OFILE "Correlation coefficient between Org$j and org$q is $result\n"; 
		
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




	