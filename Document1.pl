
open(FH, "raw_species_word_associations.txt") or die;
my @reco=<FH>;
close FH;

open(OUT,">word_species.cc") or die;

foreach(@reco){
	next if($_=~/^#/);
	my @r=split("\t",$_);
	my $word=pop(@r);
	chomp($word);
	
	my $count=0;
	my $zerocount=0;
	foreach(@r){
		/(.*?):(.*)/;
		$count++ if($1 > 0);
		$zerocount++;
	}
	next if($count < 20);
	next if($zerocount < 20);
	
	foreach(@reco){
		next if($_=~/^#/);
		my @r1=split("\t",$_);
		my $w=pop(@r1);
		chomp($w);
		next if($w eq $word);
		my $count1=0;
		my $zerocount1=0;
		
		foreach(@r1){
			/(.*?):(.*)/;
			$count1++ if($1 > 0);
			$zerocount1++;
		}
		next if($count1 < 20);
		next if($zerocount1 < 20);
	
		my $r=Correlation(\@r, \@r1);
		my $r2=sprintf "%.2f",$r;
		next if($r2 < 0.7);
		print OUT "$word\t$w\t$r2\n";
	}
}

close OUT;

sub Correlation {
    my ($array1ref, $array2ref) = @_;
    my ($sum1, $sum2);
    my ($sum1_squared, $sum2_squared);
    foreach (@$array1ref) { 
    	$sum1 += $_; $sum1_squared += $_ ** 2
    }
    foreach (@$array2ref) { 
    	$sum2 += $_; $sum2_squared += $_ ** 2 
    }
    return (@$array1ref ** 2) * Covariance($array1ref, $array2ref) /
    sqrt(((@$array1ref * $sum1_squared) - ($sum1 ** 2)) *
             ((@$array1ref * $sum2_squared) - ($sum2 ** 2)));
}

sub Covariance {
    my ($array1ref, $array2ref) = @_;
    my ($i, $result);
    for ($i = 0; $i < @$array1ref; $i++) {
        $result += $array1ref->[$i] * $array2ref->[$i];
    }
    $result /= @$array1ref;
    $result -= Mean($array1ref) * Mean($array2ref);
}

sub Mean {
    my ($arrayref) = @_;
    my $result;
    foreach (@$arrayref) { $result += $_ }
    return $result / @$arrayref;
}


=item
for(my $i=0; $i < 10; $i++){
	for(my $j=0; $j < 10; $j++){
		$array[$i][$j]=0;
	}
}


for(my $i=0; $i < 10; $i++){
	for(my $j=0; $j < 10; $j++){
		print "$array[$i][$j]  ";
	}
	print "\n";
}