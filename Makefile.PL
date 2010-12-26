use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
  NAME                => 'ls++',
  AUTHOR              => q{Magnus Woldrich <trapd00r@trapd00r.se>},
  VERSION_FROM        => './ls++',
  #ABSTRACT_FROM       => './ls++',

  ($ExtUtils::MakeMaker::VERSION >= 6.3002
    ? ('LICENSE'=> 'perl')
    : ()),

  PL_FILES            => {},

  PREREQ_PM           => {
    'Term::ExtendedColor' => 0.16,
  },

  EXE_FILES           => ['./ls++'],

  MAN1PODS            => {
    './ls++'          => 'blib/man1/ls++.1',
  },

  MIN_PERL_VERSION => '5.10.0',

  dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
);
