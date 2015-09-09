# !|usr|bin|perl -w

	$file="2.txt";
	open(FILE,$file);
	@mbtu=<FILE>;
	close FILE;
	
	
	$file2="path.TAB";
	open(FILE2,$file2);
	@mbtu2=<FILE2>;
	close FILE2;
			


	$outfile="KEGG5.txt";
	open(OFILE,">$outfile");
	
	
	
		foreach $mbtu(@mbtu)
		{	
			@code=( $mbtu =~ /(\d+)/);
	
			foreach $mbtu2(@mbtu2)
			{	
				if ( $mbtu2 =~ /@code/)

				{	
					print OFILE "$mbtu2";	
				}
			}

		}
	
	close (OFILE);

	
exit;
