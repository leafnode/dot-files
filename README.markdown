= Leafnode's dot-files

Configuration files in this repository are the effect of many hours of
research, googling and copy&paste.

Currently files for this software are included:
* screen
* zsh
* vim

As this repository is being use as a bootstrap for my new accounts on Linux
machines, I included installation script to hook this repository with account.

== Installation guide

1. `git clone http://github.com/leafnode/dot-files.git .dot-files-repo`
2. `cd .dot-files-repo`
3. `./setup.sh`

This will download scripts and create symlinks for all files. There are some
issues with color files, but that's something different.

== ZSH features
* TBD
* 'private' settings, that are not to be overwritten/visible on github are
  included from `.zsh_priv`

== screen features
* bottom status bar in few variants

== ViM features

=== Included plugins

* [NERDTree](https://github.com/scrooloose/nerdtree) - file manager
* [NERDCommenter](https://github.com/ddollar/nerdcommenter) - comment-out code
  easily
* [FuzzyFinder](https://github.com/vim-scripts/FuzzyFinder) - open/goto files
  and resources easily using wildcards
* [Ack](https://github.com/mileszs/ack.vim) - search for patterns in a
  directory
* [gist](https://github.com/mattn/gist-vim) - post gists directly from ViM
* [scratch](https://github.com/vim-scripts/scratch.vim) - scratch pad
* [snipMate](https://github.com/msanders/snipmate.vim) - TextMate-like snippets
* [supertab](https://github.com/ervandew/supertab) - tab-completion in insert
  mode
* [surround](https://github.com/tpope/vim-surround) - surround text with
  tags/quotes/parenthese
* [vcscommand](https://github.com/vim-scripts/vcscommand.vim) - integration
  with all popular version control systems
* [searchfold](https://github.com/vim-scripts/searchfold.vim) - navigate
  through folds
* [syntastic](https://github.com/scrooloose/syntastic) - syntax checking for
  many languates
* [taglist](https://github.com/vim-scripts/taglist.vim) - code outliner
* [markdown](https://github.com/tpope/vim-markdown) - markdown file syntax
* [sparkup](https://github.com/rstacruz/sparkup) - write HTML code easier
* [javascript](https://github.com/pangloss/vim-javascript) - javascript syntax
* runthisprog (authorship unknown; it might have been be written by me, but I'm
  not sure)

= To do

* create Rake-style installation script, like in [Janus](https://github.com/carlhuda/janus)
* deal with issue in vim colors (and/or include color-sampler plugin)
* describe all neat features provided by vim plugins, possibly with all key
  mappings (this is quite important for me too, as I just added many new
  plugins and I need a central point of reference)
