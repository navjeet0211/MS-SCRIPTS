# !/usr/bin/perl -w

$dirtoget=""; #paste directory path

opendir(DIR, $dirtoget) || die("Cannot open directory");
@thefiles= readdir(DIR);
closedir(DIR);


foreach $f (@thefiles)
{
	open(IN,"/$f");    #paste directory path
	@array = <IN>;
	close (IN);
	open (OUT,">$f");
	$x = @array;
	for($i=0;$i<$x;$i++)
	{
		if ($array[$i] =~ /^>/)
		{
			if ($array[($i+1)] =~ /^>/){  print "$array[$i]\n";}
			else {print OUT "$array[$i]\n";}
		}
		else { print OUT "$array[$i]\n";} 
		
	}
	close(OUT);
}
