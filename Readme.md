# vimfiles

The vimfiles we use at Codegram. Best vim config ever :)

Ready for VIM 7.3!

##Installation
In your home directory:

    git clone https://github.com/codegram/vimfiles.git .vim

    sh .vim/install.sh

##Mappings
**Use with caution: strongly opinionated config**

###Normal mode
* **Space** => Search, with very magic by default ("Normal" regex mode, [more info](http://vimdoc.sourceforge.net/htmldoc/pattern.html))
* **,Space** => Clear search highlight
* **,v** => Splits to a new vertical split and switch to it
* **Control + [h,j,k,l]** => move between splits
* **Tab** => Next buffer
* **Shift + Tab** => Previous buffer
* **,q** => Save and close all (:wqa!)
* **,w** => Save (:w!)
* **,Esc** => Quit without saving (:q!)
* **F4** => Toggle Numberlock mode (Numbers mapped to !"·$%&/()...)
* **Shift + r** => Execute current buffer as ruby
* **,d** => Delete current buffer (bd)
* **,D** => Delete all buffers

###Visual mode
* **,g** => git blame
* **,h** => get a link in the clipboard referencing the selected lines in Github

###Insert mode
* **jj** => Back to normal mode

###Plugins related
* **,a** => Ack search
* **,a|** => Align Cucumber Tables
* **,a=** => Align lines with =
* **,a:** => Align lines with :
* **Control + [n,p]** => Rotate Ack results
* **,co** => Comment lines
* **,b** => Fuzzy buffer explorer
* **,l** => Tag list
* **,o** => PeepOpen
* **,p** => Nerd tree
* **,R** => RbREPL

###Commenting
* **gc{motion}** - toggle comment (alternative: **,__**)
* **gcc**- toggle comment on the current line
* **,_r** - comment text to the right of the cursor

###Surrounding
* **ys{motion}X** - surround *motion* with X
* **ysiw]** - surround the current word with [word]
* **yssX** - wrap entire line with X
* **yS{motion}X** - place into a line of its own, indent, then surround
* **dsX** - delete surrounding X
* **csXY** - change surrounding delimiter from X to Y (e.g. **cs'"**)
* **cstX** - change surrounding delimiter to X

##Plugins
* [Ack (instead of grep)](https://github.com/mileszs/ack.vim)
* [Autoclose](https://github.com/Townk/vim-autoclose)
* [Autocorrect](https://github.com/panozzaj/vim-autocorrect)
* [Cucumber](https://github.com/tpope/vim-cucumber)
* [Endwise](https://github.com/tpope/vim-endwise.git)
* [Fugitive](https://github.com/tpope/vim-fugitive)
* [FuzzyFinder](https://github.com/clones/vim-fuzzyfinder)
* [Gist](http://www.vim.org/scripts/script.php?script_id=2423)
* [Gundo](http://github.com/sjl/gundo.vim.git)
* [Haml](https://github.com/tpope/vim-haml)
* [Markdown syntax](https://github.com/plasticboy/vim-markdown)
* [Nerdtree](https://github.com/scrooloose/nerdtree)
* [Numberlock](https://github.com/codegram/vim-numberlock)
* [Pathogen](https://github.com/tpope/vim-pathogen)
* [Peepopen](http://peepcode.com/products/peepopen)
* [Rails](https://github.com/tpope/vim-rails)
* [RbREPL](https://github.com/Bogdanp/rbrepl.vim)
* [Slim](https://github.com/bbommarito/vim-slim)
* [Snipmate](https://github.com/msanders/snipmate.vim)
* [Sparkup](https://github.com/rstacruz/sparkup)
* [Speedating](https://github.com/tpope/vim-speeddating)
* [Surround](https://github.com/tpope/vim-surround)
* [Syntastic](https://github.com/scrooloose/syntastic.git)
* [Tabular](https://github.com/godlygeek/tabular)
* [Taglist](https://github.com/chrismetcalf/vim-taglist)
* [TComment](https://github.com/tsaleh/vim-tcomment)
* [Todo](https://github.com/codegram/vim-todo)
* [Yankring](https://github.com/chrismetcalf/vim-yankring)


##Colorschemes
*  [af](http://www.vim.org/scripts/script.php?script_id=950)
*  [Clouds midnight](http://forr.st/~yZn)
*  [**molokai (default)**](http://www.vim.org/scripts/script.php?script_id=2340)
*  [mustang](http://hcalves.deviantart.com/art/Mustang-Vim-Colorscheme-98974484)
*  [oceanblack](http://www.vim.org/scripts/script.php?script_id=603)
*  [skittles_dark](http://www.vim.org/scripts/script.php?script_id=2595)
*  [twilight](http://www.vim.org/scripts/script.php?script_id=1677)

###Some considerations
* Leader is **,**
* Nullified arrow keys
* No backup files
* Move cursor by display lines instead of physical (j => gj)
* Autosave on lose focus
* _ is a word separator
* Font is Monaco 12

### TODO
* Better description
* Document paste stuff
