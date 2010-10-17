#!/usr/bin/perl
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME => 'ls++',
    ABSTRACT => 'ls on steroids',
    AUTHOR => 'Magnus Woldrich <trapd00r@trapd00r.se',
    EXE_FILES => ['ls++'],
    LICENSE => "GPLv2",
    MIN_PERL_VERSION => 5.000,
);


