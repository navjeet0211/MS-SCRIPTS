# !|usr|bin|perl -w

	$file="/home/cfglab/Desktop/kirtiman/Files.txt";
	open(FILE,$file);
	@name=<FILE>;
	close FILE;

	
	$file2="/home/cfglab/Desktop/kirtiman/map_title.tab";
	open(FILE2,$file2);
	@mbtu2=<FILE2>;
	close FILE2;		


	$outfile="KEGG2";
	open(OFILE,">$outfile");
	
	print OFILE "Pathway id";
	print OFILE "\tGene id\n";
	



 	foreach $name(@name)
	{	
		$file=$name;
		open(FILE,$file);
		@mbtu=<FILE>;
		close FILE;
		

	
		foreach $mbtu2(@mbtu2)
		{	
			@code=( $mbtu2 =~ /(\d+)/);
	
			foreach $mbtu(@mbtu)
			{	
				if ( $mbtu =~ /@code/g)

				{	
					print OFILE "@code\t";
					print OFILE "$mbtu";	
				}
			}

		}
	}
	close (OFILE);

	
exit;
