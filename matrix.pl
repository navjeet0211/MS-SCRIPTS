#! usr/bin/perl -w

print "Rows   =";
$x=<STDIN>;
print "Column =";
$y=<STDIN>;

for($i=0;$i<$x;$i++){
	for($j=0;$j<$y;$j++){
		print "matrix $i $j\t";
		$matrix[$i][$j] = <STDIN>;
		chop($matrix[$i][$j]);
}
}
print "\n";

for($i=0;$i<$x;$i++){
	for($j=0;$j<$y;$j++){
		print $matrix[$i][$j];
		print "\t"
}
print "\n";
}
