# !usr|bin|perl -w
open(file,"KEGG4");
@gene=<file>;
close(file);

open(ofile,">KEGG8");

foreach $line(@gene)
{
	if($line=~ /(Rv)/g)
	{
		print ofile "Mycobacterium tuberculosis H37Rv\n";
	}
	elsif($line=~ /(MT)/g)
	{
		print ofile "Mycobacterium tuberculosis CDC1551\n ";
	}
	elsif($line=~ /(MRA)/g)
	{
		print ofile "Mycobacterium tuberculosis H37Ra\n";
	}
	elsif($line=~ /(TBFG)/g)
	{
		print ofile "Mycobacterium tuberculosis F11\n";
	}
	elsif($line=~ /(Mb)/g)
	{
		print ofile "Mycobacterium bovis AF2122/97\n";
	}
	elsif($line=~ /(BCG)/g)
	{
		print ofile "Mycobacterium bovis BCG Pasteur 1173P2\n";
	}
	elsif($line=~ /(ML)/g)
	{
		print ofile "Mycobacterium leprae\n";
	}
	elsif($line=~ /(MAP)/g)
	{
		print ofile "Mycobacterium avium paratuberculosis\n";
	}
	elsif($line=~ /(MAV)/g)
	{
		print ofile "Mycobacterium avium 104\n";
	}
	elsif($line=~ /(MSMEG)/g)
	{
		print ofile "Mycobacterium smegmatis\n";
	}
	elsif($line=~ /(MUL)/g)
	{
		print ofile "Mycobacterium ulcerans\n";
	}
	elsif($line=~ /(Mvan)/g)
	{
		print ofile "Mycobacterium vanbaalenii\n";
	}
	elsif($line=~ /(Mflv)/g)
	{
		print ofile "Mycobacterium gilvum\n";
	}
	elsif($line=~ /(Mmcs)/g)
	{
		print ofile "Mycobacterium sp. MCS\n";
	}
	elsif($line=~ /(Mkms)/g)
	{
		print ofile "Mycobacterium sp. KMS\n";
	}
	elsif($line=~ /(Mjls)/g)
	{
		print ofile "Mycobacterium sp. JLS\n";
	}
	elsif($line=~ /(JW)/g)
	{
		print ofile "E.coli K-12\n";
	}
}
close(ofile);
	
exit;
	
