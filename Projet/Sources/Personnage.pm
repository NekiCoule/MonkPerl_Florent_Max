package Personnage;
use strict;
use warnings;

sub new {
	my ($class,$px,$py) = @_; #paramètres
	$class = ref($class) || $class;
	my $this = {};
	bless($this, $class);
	$this->{PX} = $px;
	$this->{PY} = $py;
	$this->{ETAT} = 1;
	return $this;
}

#Mutateurs

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

sub setPx {
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



#Destructeur 

sub DESTROY {
	my ($this) = @_;
}




1;