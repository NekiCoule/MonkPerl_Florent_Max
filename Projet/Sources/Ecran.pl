print ("Hello Ecran\n");

#BUT : Affiche la map
#Entrée : La map a afficher
#Sortie : La map apparaît à l'écran
sub Affiche_Tableau {
	my ($t) = @_;
	for( my $i=0; $i<16; $i+=1 ){
		for( my $j=0; $j<31; $j+=1 ){
			print ("$t[$i][$j]");		
		}
		print ("\n");
	}	
}

1;