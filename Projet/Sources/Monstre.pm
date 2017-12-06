package Monstre;
use strict;
use warnings;
use personnage;
our @ISA = qw(Personnage);

sub new {
	my ($class,$px,$py) = @_; #paramètres
	#$class = ref($class) || $class;
	my $this = $class->SUPER::new($px, $py);
	#bless($this, $class);
	$this->{VIE} = 4;
	return  bless($this,$class);
}
#Mutateurs


sub getVie {
	my ($this) = @_;
	return $this->{VIE};	
}

sub setVie {
	my ($this,$mVie) = @_;
	$this->{VIE} = $mVie;	
}


#Destructeur 

sub DESTROY {
	my ($this) = @_;
}




1;