#!/usr/bin/perl
use strict;
use warnings;
use Pisteur;

require "Inits.pl";
require "Gestion_Tour.pl";
require "Ecran.pl";


#Tableau C'est le tableau qui sera affiché consultable par les pisteurs avec la position de chaque pisteur, les traces du monstre et le monstre
my @Map_Pisteurs;
#Tableau consultable par le monstre abec sa postion, les traces des pisteurs et leurs positions
my @Map_Monstre;


my $pis = Pisteur->new(5,6);

Init_Tableau(\@Map_Pisteurs);
Init_Tableau(\@Map_Monstre);

Affiche_Tableau(\@Map_Pisteurs);

print ($pis->getPx()."\n");

$pis->setPx(8);

print ($pis->getPx()."\n");
