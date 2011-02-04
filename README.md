# NAME

ls++ - colorized ls on steroids

# USAGE

ls++ [view] (files)

# DESCRIPTION

### GNU/Linux

  ![GNU/Linux screenshot](http://perl.japh.se/devel/App-ls++/ls++_gnu_linux.png)

### MacOSX / *BSD

  ![MacOSX screenshot](http://perl.japh.se/devel/App-ls++/ls++_bsd_macos.png)

### GNU/Linux TTY/VC

  ![GNU/Linux TTY](http://perl.japh.se/devel/App-ls++/ls++_gnu_linux_tty.png)

# OPTIONS

### Views

    --pf    permissions, file
    --psf   permissions, size, file
    --tpf   time, permissions, file
    --tpsf  time, permissions, size, file (default)
    --ptsf  permissions, time, size, file
    --help  show the help and exit
    --man   show the manpage and exit

# INSTALLATION

    cpan Term::ExtendedColor
    git clone git://github.com/trapd00r/ls--.git
    cd ls--
    perl Makefile.PL
    make && su -c 'make install'

    cp ls++.conf $HOME/.ls++.conf

# HISTORY

I wanted to re-arrange the ls output just like one can do with the -printf
option to GNU find. Sadly, there are no -printf option available for ls, so I
threw together a quick hack called 'pilsner' that did what I wanted and nothing
more, nothing less. Not very useful to others.

Mattias Svanström crafted together the 'l' application which did basicly the
same thing but more elegant and with a nice twist; it calculated relative
mtimes.

I really liked that idea, but there were a couple of annoyances, so I forked the
project and added a configuration file, support for flags that'll control the
different views and possiblity to ignore certain files.

# AUTHOR

Written by Magnus Woldrich

# REPORTING BUGS

Report bugs to trapd00r@trapd00r.se

# COPYRIGHT

Copyright (C) 2010, 2010 Magnus Woldrich

License: PerlArtistic


# SEE ALSO

__l__ <http://github.com/mmso/scripts>

__pilsner__ <http://github.com/trapd00r/utils/blob/master/pilsner>
