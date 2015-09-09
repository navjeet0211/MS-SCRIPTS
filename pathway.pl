# !|usr|bin|perl -w

	$file="/home/cfglab/Desktop/kirtiman/Files.txt";
	open(FILE,$file);
	@name=<FILE>;
	close FILE;

	
	$file2="/home/cfglab/Desktop/kirtiman/map_title.tab";
	open(FILE2,$file2);
	@mbtu2=<FILE2>;
	close FILE2;		


	$outfile="KEGG";
	open(OFILE,">$outfile");



 	foreach $name(@name)
	{	
		$file=$name;
		print OFILE "\n\n####################################################################################\n";
		print OFILE "\n====================================================================================\n";
		print OFILE "\n\t\t$file\n";
		print OFILE "\n====================================================================================\n";
		print OFILE "\n####################################################################################\n";
		open(FILE,$file);
		@mbtu=<FILE>;
		close FILE;

	
		foreach $mbtu2(@mbtu2)
		{	
			@code=( $mbtu2 =~ /(\d+)/);
			print OFILE "\n====================================================================================\n";
			print OFILE "\n\n$mbtu2\n";
			print OFILE "\n====================================================================================\n";
			foreach $mbtu(@mbtu)
			{	
				if( $mbtu =~ /@code/g)
				{print OFILE "$mbtu";}
			}

		}
	}
	close (OFILE);

	
exit;
