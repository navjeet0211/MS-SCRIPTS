use Benchmark;
$dirname="C:/perl/bin/temp";

opendir(DIR, $dirname) or die "cant opendir $dirname: $!";
while (defined($file = readdir(DIR))) {
next if $file =~ /^\.\.?$/; 

chomp($file);
$paramfile=$file;
$hashname=$paramfile;
push(@hashes,$hashname);
print "$hashname\t";
print FH "$hashname\t";

open (PARAM,"C:/perl/bin/temp/$paramfile") ||
       die "can't open $paramfile: $!";
@readline=();
$i=0;
while ($line = <PARAM>) {
$i++;
push(@readline,$line);
#print $line."\t";
}
if($i<6)
{
print @readline[3]."\t";
#print @readline[4]."\n";
}
else
{
print "\n";
}	
#print "\n";
close (PARAM);
}