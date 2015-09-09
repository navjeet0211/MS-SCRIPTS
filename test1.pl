use Benchmark;
$dirname="C:/perl/bin/temp";

opendir(DIR, $dirname) or die "cant opendir $dirname: $!";
open(FILE,">join.txt");
while (defined($file = readdir(DIR))) {
next if $file =~ /^\.\.?$/; 

chomp($file);
$paramfile=$file;
$hashname=$paramfile;
push(@hashes,$hashname);
print FILE "$hashname\n";


open (PARAM,"C:/perl/bin/temp/$paramfile") ||
       die "can't open $paramfile: $!";
@readline=();
$i=0;
while ($line = <PARAM>) {
$i++;
push(@readline,$line);
#print FILE $line."\n";
@Pathway = (@readline =~ /00010/g);
}
print FILE "\n";
	
#print "\n";
close (PARAM);
}
close (FILE);