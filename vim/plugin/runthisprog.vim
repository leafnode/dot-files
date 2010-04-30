function! RunThisProg()
python << EOF
import vim
ft = vim.eval("&filetype")
if ft == "c" or ft == "cpp":
   import re
   data = open("Makefile").read()
   match = re.search("OUTPUT\s?=\s?(\w+)", data).group(1)
   vim.command("!./"+match)
elif ft == "sh" or ft == 'python':
   vim.command("!"+vim.current.buffer.name)
EOF
endfun
