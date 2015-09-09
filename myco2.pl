# !usr|bin|perl -w
open(file,"kirtiman_1.txt");
@gene=<file>;
$length=@gene;
close(file);
open(ofile,">kirtiman_2.txt");

for($line=0;$line<$length;$line++)
{
	if($gene[$line]=~ /(Rv)/)
	{
		
		push(@Myco1,$gene[$line]);
		
	}
	elsif($gene[$line]=~ /(MT)/)
	{
		
		push(@Myco2,$gene[$line]);
				
	}
	elsif($gene[$line]=~ /(MRA)/)
	{
		
		push(@Myco3,$gene[$line]);
		
					
	}
	elsif($gene[$line]=~ /(TBFG)/)
	{
		push(@Myco4,$gene[$line]);
		
	}
	elsif($gene[$line]=~ /(Mb)/)
	{

		push(@Myco5,$gene[$line]);
	
	}
	elsif($gene[$line]=~ /(BCG)/)
	{
	
		push(@Myco6,$gene[$line]);
		
	}
	elsif($gene[$line]=~ /(ML)/)
	{

		push(@Myco7,$gene[$line]);
	
	}
	elsif($gene[$line]=~ /(MAP)/)
	{
		
		push(@Myco8,$gene[$line]);
		
	}
	elsif($gene[$line]=~ /(MAV)/)
	{

		push(@Myco9,$gene[$line]);
		
	}
	elsif($gene[$line]=~ /(MSMEG)/)
	{

		push(@Myco10,$gene[$line]);
		
	}
	elsif($gene[$line]=~ /(MUL)/)
	{

		push(@Myco11,$gene[$line]);
		
	}
	elsif($gene[$line]=~ /(Mvan)/)
	{

		push(@Myco12,$gene[$line]);
	
	}
	elsif($gene[$line]=~ /(Mflv)/)
	{

		push(@Myco13,$gene[$line]);
		
	}
	elsif($gene[$line]=~ /(Mmcs)/)
	{

		push(@Myco14,$gene[$line]);
		
	}
	elsif($gene[$line]=~ /(Mkms)/)
	{

		push(@Myco15,$gene[$line]);
		
	}
	elsif($gene[$line]=~ /(Mjls)/)
	{

		push(@Myco16,$gene[$line]);
		
	}
	elsif($gene[$line]=~ /(JW)/)
	{

		push(@ecoli,$gene[$line]);
		
	}

}
		$myco1=join(';',@Myco1);
		$myco1=~ s/\s+/ /g;
		@Myco1=split(/;/,$myco1);
		
		$myco2=join(';',@Myco2);
		$myco2=~ s/\s+/ /g;
		@Myco2=split(/;/,$myco2);

		$myco3=join(';',@Myco3);
		$myco3=~ s/\s+/ /g;
		@Myco3=split(/;/,$myco3);

		$myco4=join(';',@Myco4);
		$myco4=~ s/\s+/ /g;
		@Myco4=split(/;/,$myco4);

		$myco5=join(';',@Myco5);
		$myco5=~ s/\s+/ /g;
		@Myco5=split(/;/,$myco5);	

		$myco6=join(';',@Myco6);
		$myco6=~ s/\s+/ /g;
		@Myco6=split(/;/,$myco6);

		$myco7=join(';',@Myco7);
		$myco7=~ s/\s+/ /g;
		@Myco7=split(/;/,$myco7);

		$myco8=join(';',@Myco8);
		$myco8=~ s/\s+/ /g;
		@Myco8=split(/;/,$myco8);

		$myco9=join(';',@Myco9);
		$myco9=~ s/\s+/ /g;
		@Myco9=split(/;/,$myco9);

		$myco10=join(';',@Myco10);
		$myco10=~ s/\s+/ /g;
		@Myco10=split(/;/,$myco10);
		@Myco10=split(/;/,$myco10);

		$myco11=join(';',@Myco11);
		$myco11=~ s/\s+/ /g;
		@Myco11=split(/;/,$myco11);

		$myco12=join(';',@Myco12);
		$myco12=~ s/\s+/ /g;
		@Myco12=split(/;/,$myco12);	

		$myco13=join(';',@Myco13);
		$myco13=~ s/\s+/ /g;
		@Myco13=split(/;/,$myco13);
		@Myco13=split(/;/,$myco13);

		$myco14=join(';',@Myco14);
		$myco14=~ s/\s+/ /g;
		@Myco14=split(/;/,$myco14);

		$myco15=join(';',@Myco15);
		$myco15=~ s/\s+/ /g;
		@Myco15=split(/;/,$myco15);

		$myco16=join(';',@Myco16);
		$myco16=~ s/\s+/ /g;
		@Myco16=split(/;/,$myco16);

		$ecoli=join(';',@ecoli);
		$ecoli=~ s/\s+/ /g;
		@ecoli=split(/;/,$ecoli);

for($i=0;$i<3203;$i++)
{
	print ofile "$Myco1[$i]\t";
	print ofile "$Myco2[$i]\t";
	print ofile "$Myco3[$i]\t";
	print ofile "$Myco4[$i]\t";
	print ofile "$Myco5[$i]\t";
	print ofile "$Myco6[$i]\t";
	print ofile "$Myco7[$i]\t";
	print ofile "$Myco8[$i]\t";
	print ofile "$Myco9[$i]\t";
	print ofile "$Myco10[$i]\t";
	print ofile "$Myco11[$i]\t";
	print ofile "$Myco12[$i]\t";
	print ofile "$Myco13[$i]\t";
	print ofile "$Myco14[$i]\t";
	print ofile "$Myco15[$i]\t";
	print ofile "$Myco16[$i]\t";
	print ofile "$ecoli[$i]\n";
	
}
close(ofile);
	
exit;

