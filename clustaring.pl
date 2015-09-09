################################################################
################################################################
#####									     #####
##### Program to create gene expression (orthologs) matrix #####
#####									     #####
################################################################
################################################################
# !usr|bin|perl -w
open(file,"Navjeet_1.txt");
@gene=<file>;
$length=@gene;
close(file);
open(ofile,">Genes_expression.txt");

for($line=0;$line<$length;$line++)
{
	if($gene[$line]=~ /(Rv)/)
	{
		
		push(@Myco1,1);
		
	}else{push(@Myco1,0);}

	if($gene[$line]=~ /(MT)/)
	{
		
		push(@Myco2,1);
				
	}else{push(@Myco2,0);}

	if($gene[$line]=~ /(MRA)/)
	{
		
		push(@Myco3,1);
		
					
	}else{push(@Myco3,0);}

	if($gene[$line]=~ /(TBFG)/)
	{ 	
	
		push(@Myco4,1);
		
	}else{push(@Myco4,0);}
	
	if($gene[$line]=~ /(Mb)/)
	{

		push(@Myco5,1);
	
	}else{push(@Myco5,0);}

	if($gene[$line]=~ /(BCG)/)
	{
	
		push(@Myco6,1);
		
	}else{push(@Myco6,0);}

	if($gene[$line]=~ /(ML)/)
	{

		push(@Myco7,1);
	
	}else{push(@Myco7,0);}

	if($gene[$line]=~ /(MAP)/)
	{
		
		push(@Myco8,1);
		
	}else{push(@Myco8,0);}

	if($gene[$line]=~ /(MAV)/)
	{

		push(@Myco9,1);
		
	}else{push(@Myco9,0);}

	if($gene[$line]=~ /(MSMEG)/)
	{

		push(@Myco10,1);
		
	}else{push(@Myco10,0);}

	if($gene[$line]=~ /(MUL)/)
	{

		push(@Myco11,1);
		
	}else{push(@Myco11,0);}

	if($gene[$line]=~ /(Mvan)/)
	{

		push(@Myco12,1);
	
	}else{push(@Myco12,0);}

	if($gene[$line]=~ /(Mflv)/)
	{

		push(@Myco13,1);
		
	}else{push(@Myco13,0);}

	if($gene[$line]=~ /(Mmcs)/)
	{

		push(@Myco14,1);
		
	}else{push(@Myco14,0);}

	if($gene[$line]=~ /(Mkms)/)
	{

		push(@Myco15,1);
		
	}else{push(@Myco15,0);}

	if($gene[$line]=~ /(Mjls)/)
	{

		push(@Myco16,1);
		
	}else{push(@Myco16,0);}


}

	print ofile "Organism1\t@Myco1\n";
	print ofile "Organism2\t@Myco2\n";
	print ofile "Organism3\t@Myco3\n";
	print ofile "Organism4\t@Myco4\n";
	print ofile "Organism5\t@Myco5\n";
	print ofile "Organism6\t@Myco6\n";
	print ofile "Organism7\t@Myco7\n";
	print ofile "Organism8\t@Myco8\n";
	print ofile "Organism9\t@Myco9\n";
	print ofile "Organism10\t@Myco10\n";
	print ofile "Organism11\t@Myco11\n";
	print ofile "Organism12\t@Myco12\n";
	print ofile "Organism13\t@Myco13\n";
	print ofile "Organism14\t@Myco14\n";
	print ofile "Organism15\t@Myco15\n";
	print ofile "Organism16\t@Myco16\n";

close(ofile);
	
exit;

