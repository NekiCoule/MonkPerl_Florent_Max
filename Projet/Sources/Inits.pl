#my @t = (
#	["*","*","*","*","*"],
#	["*","0","0","0","*"],
#	["*","*","*","*","*"]
#	);
#
#for( my $i=0; $i<3; $i+=1 ) {
#   for( my $j=0; $j<5; $j+=1 ) {
#   	print ("$t[$i][$j]");
#   }
#   	print "\n";
#}
use warnings;


#création du tableau pour la map
my @t;

#i = hauteur de la map, les lignes. Il y aura 14 lignes, 2 seront des *, donc 16 lignes en tout
for( my $i=0; $i<16; $i+=1 ){
	#j = longueur de la map, les colones. Il y aura 29 colones, 2 seront des *, donc 31 colones en tout
	for( my $j=0; $j<31; $j+=1 ){
		#toute la première et la dernière ligne est remplie d'*
		if( $i == 0 || $i == 15 ){
			$t[$i][$j] = "*";
		}
		#toute la première et la dernière colone est remplie d'*
		elsif( $j == 0 || $j == 30 ){
			$t[$i][$j] = "*";
		}
		else{
			$t[$i][$j] = "0";
		}
		print ("$t[$i][$j]");
	}
	print "\n";
}	