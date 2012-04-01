= General

== Changes
* `ci"` - change inside "
* `ca"` - change around "
* `ciw` - change inside a word

== Movement
*to be written*

== Windows
* All window commands start with `ctrl w`
* To move back to the NERDTree window from another split window in the current
  tab, use `ctrl ww` or `ctrl wh`
* To move between windows in general, `ctrl wh` takes you left, `ctrl wl` takes you
  right, `ctrl wj` takes you down and `ctrl wk` takes you up.
* To quit a window use `ctrl wq`

* **Custom bindings**: Navigate through windows using `Command-Option-arrows`

== Tabs
* `gt` - next tab
* `gT` - previous tab

= Plugins
== Surrounds

Surround text with tags/quotes/parenthese

* b, B, r, and a are aliases for ), }, ], and &gt;
* `&lt;command&gt;&lt;motion?&gt;&lt;target&gt;`
* commands:
  * `cs` == change surrounding
  * `ds` == delete surrounding
  * `ys` == you surround (add surrounding)
* motion:
  * none - context of current 
  * `iw` - word (beggining -&gt; end)
  * `w` - cursor to the and of word
  * `s` - line
* target:
  * b = )
  * B = }
  * r = ]
  * a = &gt;
  * t = any kind of tag (eg. for removal or replacement)
* examples (\* indicates cursor position):
  * `ysiw(` = `f\*oo` -&gt; `(foo)`
  * `ysiwr` = `f\*oo` -&gt; `[foo]`
  * `yswr` = `f*oo` -&gt; `f[oo]`
  * `dst` = `&lt;p&gt;*Foo&lt;/p&gt;` -&gt; 'Foo'

== NERDTree

NERDTree is a plugin displaying simple file manager/navigator in a ViM window

* **Custom bind:** `<Leader>-p` - toggle NERDTree
* To open a tab and move into it use `j` or `k` to navigate the file you want to
  open, then hit `t` from the NERDTree window
* To open a tab but stay in the current tab, use `j` or `k` to navigate the file
  you want to open, then hit `T` from the NERDTree Window
* To move a file in the NERDTree window, use `m`
* To add a file in the NERDTree window, use `a`

== VCS command

CVS/SVN/SVK/git/hg/bzr integration plugin

* `<Leader>ca VCSAdd`
* `<Leader>cn VCSAnnotate`
* `<Leader>cN VCSAnnotate!`
* `<Leader>cc VCSCommit`
* `<Leader>cD VCSDelete`
* `<Leader>cd VCSDiff`
* `<Leader>cg VCSGotoOriginal`
* `<Leader>cG VCSGotoOriginal!`
* `<Leader>ci VCSInfo`
* `<Leader>cl VCSLog`
* `<Leader>cL VCSLock`
* `<Leader>cr VCSReview`
* `<Leader>cs VCSStatus`
* `<Leader>cu VCSUpdate`
* `<Leader>cU VCSUnlock`
* `<Leader>cv VCSVimDiff`

Only for CVS buffers:

* `<Leader>ce CVSEdit`
* `<Leader>cE CVSEditors`
* `<Leader>ct CVSUnedit`
* `<Leader>cwv CVSWatchers`
* `<Leader>cwa CVSWatchAdd`
* `<Leader>cwn CVSWatchOn`
* `<Leader>cwf CVSWatchOff`
* `<Leader>cwf CVSWatchRemove`

== Ack

* General usage: `:Ack [options] {pattern} [{directory}]`

In the quickfix window, you can use:

* **Custom binding:** `<Command-Shift-F>` to `:Ack `
* `o`    to open (same as enter)
* `go`   to preview file (open but maintain focus on ack.vim results)
* `t`    to open in new tab
* `T`    to open in new tab silently
* `v`    to open in vertical split
* `gv`   to open in vertical split silently
* `q`    to close the quickfix window

Useful option: --type=TYPE, --type=noTYPE

    Specify the types of files to include or exclude from a search. TYPE is a
    filetype, like perl or xml. --type=perl can also be specified as --perl,
    and --type=noperl can be done as --noperl.

== Conque Term

Terminal in a ViM buffer

Type :ConqueTerm <command> to launch an application in the current buffer. E.g.

* **Custom binding:** `<Command-e>` for `:ConqueTerm $SHELL --login`
* `:ConqueTerm bash`
* `:ConqueTerm mysql -h localhost -u joe\_lunchbox Menu`
* `:ConqueTerm man top `

== NERD Commenter

Comment/uncomment code easily

* `[count]<leader>cc` Comment out the current line or text selected in visual mode.
* `[count]<leader>cn` Same as <leader>cc but forces nesting.
* `[count]<leader>c<space>` Toggles the comment state of the selected line(s).
  If the topmost selected line is commented, all selected lines are uncommented
  and vice versa.
* `[count]<leader>cm` Comments the given lines using only one set of multipart delimiters.
* `[count]<leader>ci` Toggles the comment state of the selected line(s) individually.
* `[count]<leader>cs` Comments out the selected lines "sexily"
* `[count]<leader>cy` Same as <leader>cc except that the commented line(s) are yanked first.
* `<leader>c$` Comments the current line from the cursor to the end of line.
* `<leader>cA` Adds comment delimiters to the end of line and goes into insert
  mode between them.
* `<leader>ca` Switches to the alternative set of delimiters.
* `[count]<leader>cl`
* `[count]<leader>cb` Same as `cc` except that the delimiters are aligned down
  the left side (`<leader>cl`) or both sides (`<leader>cb`).
* `[count]<leader>cu` Uncomments the selected line(s).

== Taglist

The "Tag List" plugin is a source code browser plugin for Vim. This plugin
allows you to efficiently browse through source code files for different
programming languages.

Requires: `ctags`

* `:TlistToggle` - open/close the taglist window
* `:TlistOpen` - open taglist
* `<Enter>` or doubleclick - open file
* `o` - open tag in new window
* `p` - open tag in new window, but keep cursor in tag list
* `t` - open tag in new tab

== ctags

* **Custom binding:* `<Leader>rt` regenerate ctags 

== SuperTab

* Just hit `<Tab>` in insert mode

== SnipMate

* Just hit `<Tab>`

== Align

Align lets you align statements on their equal signs, make comment boxes, align
comments, align declarations, etc.

* `:5,10Align =>` to align lines 5-10 on `=>`'s

== SearchFold



== Syntastic


== Gist

