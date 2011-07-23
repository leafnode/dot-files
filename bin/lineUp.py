#!/usr/bin/env python

"""
lineup.py - line up expressions, e.g.:

    a = 1
    var_b = 3
    v2 = 4

    =>

    a     = 1
    var_b = 3
    v2    = 4

Right now works with '=' and ':'.  Accepts standard in, gives
back standard out. This script is meant to be used from inside
vim or other flexible editor. For example, in vim you may add
this line to .vimrc:

vmap ,l !lineup.py<cr>

Select lines using V command and hit ,l to line 'em up.
Alternatively, you can make a symbolic link from lineup.py to l:
ln -s lineup.py l and use this command to lineup 4 lines: !4jl
where 4j is the movement over 4 lines and l is the name of
filtering program. See :help filter in vim for details.

 Copyright (C) 2002 Andrei Kulakov <ak@silmarill.org>
 License: GPL [see http://www.gnu.org/copyleft/gpl.html]
"""

import os, sys

__version__ = "0.1"

def parse_args():
    """Parse command-line arguments."""

    a = sys.argv
    del a[0]
    if a:
        if a[0] in ("-h", "--help"):
            print __doc__
        elif a[0] in ("-v", "--version"):
            print __version__
        sys.exit()

def main():
    """Take in lines through standard input; line up their
    separators (= or :) and print them to standard out."""

    lines = sys.stdin.readlines()
    l = lines[0]
    # TODO add more separators?
    if l.find('= ') != -1:
        sep = '='
    elif l.find(': '):
        sep = ':'
    elif l.find('# '):
        sep = '#'
    else:
        return None

    # let's say we have two lines:
    # a = 1
    # bd = 3
    # Find the longest left-hand portion of each line; save these
    # lenths in ind list, then assign longest to i.
    ind = []
    for l in lines:
        if not l.strip(): continue  # empty line
        tmp = l.split(sep)[0]
        _i = len(tmp.rstrip())
        ind.append(_i)
    i = max(ind) + 1

    # Step through lines, strip left and right hand sides;
    # then fill with spaces (max length - current length).
    for l in lines:
        if not l.strip(): 
            sys.stdout.write(l) # empty line
            continue
        tmp = l.split(sep)[0]
        icur = len(tmp.rstrip())
        s, e = l.split(sep)
        s = s.rstrip()
        e = e.lstrip()
        sys.stdout.write("%s%s%s %s" % (s, ' '*(abs(i-icur)),
                        sep, e))

if __name__ == "__main__":
    parse_args()
    main()

# vim: sts=4:ts=8:et:sw=4
