package Pisteur;
use strict;
use warnings;
use personnage;
our @ISA = qw(Personnage);

my $nbPisteurs = 0;

sub new {
	my ($class,$px,$py) = @_;
	#$class = ref($class) || $class;
	my $this = $class->SUPER::new($px, $py); #appel le constructeur de la classe mère: Personnage
	#bless($this, $class);
	$nbPisteurs++;
	return  bless($this,$class);
}
#Mutateurs

sub getNbPisteurs {
	my ($class) = @_;
	$class = ref($class) || $class;
	return $nbPisteurs;	
}



#But : Vérifier si des traces du monstres ou le monstre sont autour du pisteur
#Entrée : Tableau Pisteurs / Monstre
#Sortie : Rien / Traces / Monstre (tir doit être appelé / mort si position est la même que le pisteur)
sub rapport {
	my ($this,$mTab) = @_;	
	my $mx = $this->{PX};
	my $my = $this->{PY};
	my $case = 1;
	for( my $i=-1; $i<2; $i+=1 ){
		for( my $j=-1; $j<2; $j+=1 ){
			if ( ${$mTab}[$mx+$i][$my+$j]==0) {
				
			} elsif ( ${$mTab}[$mx+$i][$my+$j]>0 && ${$mTab}[$mx+$i][$my+$j]<16 ) {
				
			} elsif ( ${$mTab}[$mx+$i][$my+$j]==16) {
			
			} elsif ( ${$mTab}[$mx+$i][$my+$j]== -1) {
				
			}	
		}
	}
}
#Destructeur 

sub DESTROY {
	my ($this) = @_;
	$nbPisteurs--;
}




1;