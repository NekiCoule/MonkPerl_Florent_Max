package Pisteur;
use strict;
use warnings;
my $nbPisteurs = 0;
sub new {
	my ($class,$px,$py) = @_;
	$class = ref($class) || $class;
	my $this = {};
	bless($this, $class);
	$this->{PX} = $px;
	$this->{PY} = $py;
	$this->{ETAT} = "Vivant";
	$this->{TRACES}= $traces;
	$nbPisteurs++;
	return $this;
}
#Mutateurs

sub getNbPisteurs {
	my ($class) = @_;
	$class = ref($class) || $class;
	return $nbPisteurs;	
}
sub getPx {
	my ($this) = @_;
	return $this->{PX};	
}
sub getPy {
	my ($this) = @_;
	return $this->{PY};	
}
sub getEtat {
	my ($this) = @_;
	return $this->{ETAT};	
}
sub getTraces {
	my ($this) = @_;
	return $this->{TRACES};	
}

sub SetPx {
	my ($this,$mx) = @_;
	$this->{PX} = $mx;	
}
sub setPy {
	my ($this,$my) = @_;
	$this->{PY} = $my;	
}
sub setEtat {
	my ($this,$mEtat) = @_;
	$this->{ETAT} = $mEtat;	
}
sub setTraces {
	my ($this,$mTraces) = @_;
	$this->{TRACES} = $mTraces;	
}

#But : Faire vieillir les traces du pisteur
#Entrée : Tableau Pisteurs / Traces Pisteur
#Sortie : Traces vieillit ou disparu
sub rapport {
	my ($this,$myTab) = @_;
	#A terminer
}
#But : Vérifier si des traces du monstres ou le monstre sont autour du pisteur
#Entrée : Tableau Pisteurs / Monstre
#Sortie : Rien / Traces / Monstre (tir doit être appelé / mort si position est la même que le pisteur)
sub rapport {
	my ($this,$mTab,$mMonster) = @_;
	#A terminer
}
#Destructeur 

sub DESTROY {
	my ($this) = @_;
	$nbPisteurs--;
}




1;