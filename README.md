
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=65SFZJ25PSKG8&currency_code=SEK&source=url) - Every tiny cent helps a lot!


ls++ - colorized ls on steroids
------------------------------


![GNU/Linux screenshot](/doc/ls++.png)


# USAGE

ls++ \[OPTION\]... \[FILE\]...

# OPTIONS

Not known parameters will be passed through to **ls**, so to show hidden files,
**-a** or **-A** might be added. See **ls(1)** for more information.

### Views

    --pf    permissions, file
    --psf   permissions, size, file
    --tpf   time, permissions, file
    --tpsf  time, permissions, size, file (default)
    --ptsf  permissions, time, size, file
    --potsf permissions, owners, time, size, file

# INSTALLATION

Packages exist for several linux distributions:

## Archlinux

    pacman -S ls++

## Debian, Ubuntu

    apt-get install ls++

## SUSE

    yast -i ls++


## Other / Bleeding edge

I recommend using the [cpanminus](https://metacpan.org/pod/App::cpanminus)
cpan client and doing a

    alias cpan=cpanm

in your shellrc. The program will be there in your normal repositories. :)


    # cpanm Term::ExtendedColor File::LsColor
    $ git clone git://github.com/trapd00r/ls--.git
    $ cd ls--
    $ perl Makefile.PL
    $ make && su -c 'make install'

    $ cp ls++.conf $HOME/.ls++.conf

## Install from git locally in your $HOME:

    $ mkdir -p $HOME/lib/perl5
    $ export PERL5LIB=${HOME}/lib/perl5
    $ export PERL_MM_OPT="INSTALL_BASE=${PERL5LIB}"
    $ cpanm Term::ExtendedColor File::LsColor

    $ git clone git://github.com/trapd00r/ls--.git
    $ cd ls--
    $ perl Makefile.PL
    $ make
    $ make install

    $ cp ls++.conf $HOME/ls++.conf

## Install from CPAN locally; managing dependencies automatically:

    $ mkdir -p $HOME/lib/perl5
    $ export PERL5LIB=${HOME}/lib/perl5
    $ export PERL_MM_OPT="INSTALL_BASE=${PERL5LIB}"
    $ cpan App::lsplusplus

If you want to install it globaly, you just skip the first three steps
and run the cpan command as root.


### Mac OS X Installation

    # cpan Term::ExtendedColor File::LsColor
    $ git clone git://github.com/trapd00r/ls--.git
    $ cd ls--
    $ perl Makefile.PL
    $ make && sudo 'make install'

    $ cp ls++.conf $HOME/.ls++.conf

# HISTORY

I wanted to re-arrange the ls output just like one can do with the -printf
option to GNU find. Sadly, there are no -printf option available for ls, so I
threw together a quick hack called 'pilsner' that did what I wanted and nothing
more, nothing less. Not very useful to others.

Mattias Svanström crafted together the 'l' application which did basically the
same thing but more elegant and with a nice twist; it calculated relative
mtimes.

I really liked that idea, but there were a couple of annoyances, so I forked the
project and added a configuration file, support for flags that'll control the
different views and possibility to ignore as well as highlight specific files.

# AUTHOR

    \ \ | / /
     \ \ - /
      \ | /
      (O O)
      ( < )
      (-=-)

    Magnus Woldrich
    CPAN ID: WOLDRICH
    m@japh.se
    http://japh.se

# CONTRIBUTORS

[Mattias Svanström][0]

[Gregory Sacre][1]

[Shelby Munsch][2] - extensive macos work


# COPYRIGHT

Copyright 2010, 2011, 2018 the **ls++** AUTHOR and CONTRIBUTORS as listed above.

# SEE ALSO

[l][2]

[pilsner][4]

[0]: http://github.com/mmso
[1]: https://github.com/gsacre
[2]: https://github.com/blacRose
[3]: http://github.com/mmso/scripts
[4]: http://github.com/trapd00r/utils/blob/master/pilsner
