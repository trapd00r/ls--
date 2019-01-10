use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile1(
    META_MERGE => {
        resources => {
            repository => 'https://github.com/trapd00r/ls--',
            bugtracker => 'https://github.com/trapd00r/ls--/issues',
        },
    },
    #BUILD_REQUIRES => {
    #},

    NAME                    => 'App::lsplusplus',
    AUTHOR                  => q{Magnus Woldrich <m@japh.se>},
    ABSTRACT                => 'ls on steroids',
    VERSION_FROM            => './ls++',
    'LICENSE'               => 'perl',
    PL_FILES                => {},
    EXE_FILES               => ['./ls++'],
    PREREQ_PM               => {
      'Term::ExtendedColor' => 0.16,
      'Time::Local'         => 0.16,
    },
    MAN1PODS                => {
      'ls++'                => 'blib/man1/ls++.1',
      'ls++.conf'           => 'blib/man1/ls++.conf.1',
      },
    META_ADD                     => {
      provides => {
        'App::lsplusplus' => {
          file => './ls++',
        },
      },
    },
    dist                    => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean                   => { FILES => 'ls++-*' },
);

sub WriteMakefile1 {
    my %params=@_;
    my $eumm_version=$ExtUtils::MakeMaker::VERSION;
    $eumm_version=eval $eumm_version;
    die "EXTRA_META is deprecated" if exists $params{EXTRA_META};
    die "License not specified" if not exists $params{LICENSE};
    if ($params{AUTHOR} and ref($params{AUTHOR}) eq 'ARRAY'
        and $eumm_version < 6.5705) {
          $params{META_ADD}->{author}=$params{AUTHOR};
          $params{AUTHOR}=join(', ',@{$params{AUTHOR}});
    }
    if ($params{BUILD_REQUIRES} and $eumm_version < 6.5503) {
        #EUMM 6.5502 has problems with BUILD_REQUIRES
        $params{PREREQ_PM}={
          %{$params{PREREQ_PM} || {}} , %{$params{BUILD_REQUIRES}}
        };
        delete $params{BUILD_REQUIRES};
    }
    delete $params{CONFIGURE_REQUIRES} if $eumm_version < 6.52;
    delete $params{MIN_PERL_VERSION} if $eumm_version < 6.48;
    delete $params{META_MERGE} if $eumm_version < 6.46;
    delete $params{META_ADD} if $eumm_version < 6.46;
    delete $params{LICENSE} if $eumm_version < 6.31;
    delete $params{AUTHOR} if $] < 5.005;
    delete $params{ABSTRACT_FROM} if $] < 5.005;
    delete $params{BINARY_LOCATION} if $] < 5.005;

    WriteMakefile(%params);
}

#sub MY::postamble {
#q{
#all :: sysconfdir
#
#sysconfdir_scripts=ls++
#
#sysconfdir:
#	$(PERL) -pi -e "s|\"/etc/ls\+\+\.conf|\"$(PREFIX)/etc/ls++.conf|g" $(sysconfdir_scripts)
#
#install_vendor :: ls++.conf
#	[ ! -d $(DESTDIR)/$(PREFIX)/etc ] && mkdir -p $(DESTDIR)/$(PREFIX)/etc
#	[ ! -f $(DESTDIR)/$(PREFIX)/etc/ls++.conf ] && cp ls++.conf $(DESTDIR)/$(PREFIX)/etc/ls++.conf
#
#install :: install_vendor
#}
#}
