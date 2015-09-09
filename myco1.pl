# !usr|bin|perl -w
open(file,"kirtiman.txt");
@gene=<file>;
close(file);
open(ofile1,">Mycobacterium tuberculosis H37Rv.txt");
open(ofile2,">Mycobacterium tuberculosis CDC1551.txt");
open(ofile3,">Mycobacterium tuberculosis H37Ra.txt");
open(ofile4,">Mycobacterium tuberculosis F11.txt");
open(ofile5,">Mycobacterium bovis AF2122/97.txt");
open(ofile6,">Mycobacterium bovis BCG Pasteur 1173P2.txt");
open(ofile7,">Mycobacterium leprae.txt");
open(ofile8,">Mycobacterium avium paratuberculosis.txt");
open(ofile9,">Mycobacterium avium 104.txt");
open(ofile10,">Mycobacterium smegmatis.txt");
open(ofile11,">Mycobacterium ulcerans.txt");
open(ofile12,">Mycobacterium vanbaalenii.txt");
open(ofile13,">Mycobacterium gilvum.txt");
open(ofile14,">Mycobacterium sp. MCS.txt");
open(ofile15,">Mycobacterium sp. KMS.txt");
open(ofile16,">Mycobacterium sp. JLS.txt");
open(ofile,">E.coli K-12.txt");

foreach $line(@gene)
{
	if($line=~ /(Rv)/)
	{
		
		print ofile1 "$line";
		
	}
	elsif($line=~ /(MT)/)
	{
		
		print ofile2 "$line";
		
	}
	elsif($line=~ /(MRA)/)
	{
		
		print ofile3 "$line";
		
	}
	elsif($line=~ /(TBFG)/)
	{
		
		print ofile4 "$line";
		
	}
	elsif($line=~ /(Mb)/)
	{
		
		print ofile5 "$line";
		
	}
	elsif($line=~ /(BCG)/)
	{
		
		print ofile6 "$line";
		
	}
	elsif($line=~ /(ML)/)
	{
		
		print ofile7 "$line";
		
	}
	elsif($line=~ /(MAP)/)
	{
		
		print ofile8 "$line";
		
	}
	elsif($line=~ /(MAV)/)
	{
		
		print ofile9 "$line";
		
	}
	elsif($line=~ /(MSMEG)/)
	{
		
		print ofile10 "$line";
		
	}
	elsif($line=~ /(MUL)/)
	{
		
		print ofile11 "$line";
		
	}
	elsif($line=~ /(Mvan)/)
	{
		
		print ofile12 "$line";
		
	}
	elsif($line=~ /(Mflv)/)
	{
		
		print ofile13 "$line ";
		
	}
	elsif($line=~ /(Mmcs)/)
	{
		
		print ofile14 "$line ";
		
	}
	elsif($line=~ /(Mkms)/)
	{
		
		print ofile15 "$line ";
		
	}
	elsif($line=~ /(Mjls)/)
	{
		
		print ofile16 "$line ";
		
	}
	elsif($line=~ /(JW)/)
	{
		
		print ofile "$line";
		
	}
}
close(ofile1);
close(ofile2);
close(ofile3);
close(ofile4);
close(ofile5);
close(ofile6);
close(ofile7);
close(ofile8);
close(ofile9);
close(ofile10);
close(ofile11);
close(ofile12);
close(ofile13);
close(ofile14);
close(ofile15);
close(ofile16);
close(ofile17);

	
exit;
	
