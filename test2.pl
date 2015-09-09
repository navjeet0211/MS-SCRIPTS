use Benchmark;
$dirname="G:\Corynebacterium";

opendir(DIR, $dirname) or die "cant opendir $dirname: $!";
open(FILE,">file.txt");
while (defined($file = readdir(DIR))) {
next if $file =~ /^\.\.?$/; 

chomp($file);
$paramfile=$file;
$hashname=$paramfile;
push(@hashes,$hashname);
print FILE "$hashname\n";
}
