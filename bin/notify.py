#!/usr/bin/python

import os
import sys
import email.Parser

emlparser = email.Parser.Parser()
eml = emlparser.parse(sys.stdin, headersonly=True)

headerSubject = eml['Subject'].replace('"', '\'')
headerFrom = eml['From'].replace('"', '\'')

os.system('smsomnix -i Mail 500500500 "Fr:%s  Sj:%s"' % (headerFrom, headerSubject))
