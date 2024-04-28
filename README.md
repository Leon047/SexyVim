---------------------------------------------------------------------------------------

<p align="center">
░██████╗███████╗██╗░░██╗██╗░░░██╗  ██╗░░░██╗██╗███╗░░░███╗
██╔════╝██╔════╝╚██╗██╔╝╚██╗░██╔╝  ██║░░░██║██║████╗░████║
╚█████╗░█████╗░░░╚███╔╝░░╚████╔╝░  ╚██╗░██╔╝██║██╔████╔██║
░╚═══██╗██╔══╝░░░██╔██╗░░░╚██╔╝░░  ░╚████╔╝░██║██║╚██╔╝██║
██████╔╝███████╗██╔╝╚██╗░░░██║░░░  ░░╚██╔╝░░██║██║░╚═╝░██║
╚═════╝░╚══════╝╚═╝░░╚═╝░░░╚═╝░░░  ░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
</p>

---------------------------------------------------------------------------------------

## Vundle Vim Configuration

> This README provides documentation for the Vundle Vim configuration provided in the `.vimrc` file.

## Installation

1. Inasll Vim:
  ```bash
  sudo apt install vim
  ```

2. Get vimrc:
  ```bash
  git clone https://github.com/Leon047/SexyVim.git && mv SexyVim/.vimrc ~/ && rm -rf SexyVim 
  ```

3. Create swaps and backups (optional):
  ```bash
  mkdir ~/.vim/sessions
  ```

4. Support virtualenv (optional) for use 'virtualenvwrapper':
  ```bash
  mkdir ~/.virtualenvs
  ```

5. Install Vundle:
  ```bash
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  ```

6. Install exuberant-ctags for Tagbar:
  ```bash
  sudo apt install exuberant-ctags
  ```

7. Launch Vim and run :PluginInstall to install all the specified plugins:
  ```bash
  PluginInstall
  ```

## Plugin List

* Vundle (gmarik/Vundle.vim): Manages plugins within Vim.

### Code/Project Navigation
* NERDTree (scrooloose/nerdtree): A tree explorer plugin for Vim.
* Unite.vim (Shougo/unite.vim): Enables navigation between buffers and files.
* Tagbar (majutsushi/tagbar): Provides a class/module browser.
* SimpylFold (tmhedberg/SimpylFold): Offers code folding.

### Other
* vim-airline (vim-airline/vim-airline): Provides a status/tabline for Vim.
* vim-airline-themes (vim-airline/vim-airline-themes): Offers themes for vim-airline.
* vim-surround (tpope/vim-surround): Helps with working with parentheses, brackets, quotes, XML tags, and more.
* indentLine (Yggdroot/indentLine): Adds indent guides.
* vim-move (matze/vim-move): Facilitates moving text.

### Snippets Support
* vim-snipmate (garbas/vim-snipmate): Manages code snippets.
* vim-addon-mw-utils (MarcWeber/vim-addon-mw-utils): Dependency for vim-snipmate.
* tlib_vim (tomtom/tlib_vim): Dependency for vim-snipmate.
* vim-snippets (honza/vim-snippets): Repository of code snippets.

### Languages Support
* syntastic (scrooloose/syntastic): Provides syntax checking for various languages.
* vim-commentary (tpope/vim-commentary): Helps comment/uncomment code.
* vim-sparkup (mitsuhiko/vim-sparkup): Offers support for Sparkup (XML/jinja/html-django, etc.).
* vim-json (elzr/vim-json): Distinct highlighting of keywords vs values, JSON-specific (non-JS) warnings, quote concealing.
* css.vim (JulesWang/css.vim): Offers CSS syntax highlighting.
* vim-less (groenewege/vim-less): Provides syntax for LESS (dynamic CSS).
* vim-javascript (pangloss/vim-javascript): Improves JavaScript indentation and syntax support.
* vim-jsbeautify (maksimr/vim-jsbeautify): Formats JavaScript files using js-beautify.
* typescript-vim (leafgarland/typescript-vim): Adds TypeScript syntax support.
* html5.vim (othree/html5.vim): Provides HTML5 omnicomplete and syntax.
* breeze.vim (idanarye/breeze.vim): Offers HTML navigation similar to vim-easymotion, tag matching, highlighting, and DOM navigation.
* jedi-vim (davidhalter/jedi-vim): Enhances Python autocompletion in Vim.
* python-mode (klen/python-mode): Adds Python support, including PyLint, Rope, Pydoc, breakpoints.
* vim-jinja (mitsuhiko/vim-jinja): Adds Jinja support for Vim.
* vim-virtualenv (jmcantrell/vim-virtualenv): Offers Virtualenv support in Vim.
* vim-cython (tshirtman/vim-cython): Adds Cython support.
* Dockerfile.vim (ekalinin/Dockerfile.vim): Provides syntax highlighting for Dockerfiles.
* vim-docker-tools (kkvh/vim-docker-tools): Offers Docker-tools.

### Hotkeys
* F1: Toggles NERDTree to browse the list of files in the current directory.
* F2: Toggles Tagbar to show a class/module browser.
* F3: Opens Unite buffer to navigate through currently opened buffers.
* F4: Aligns indents in the current code.
* F5: Syntastic syntax checking.
* F8: Python code check on PEP8.
* Ctrl-j: Move block down.
* Ctrl-k: Move block up.
* Ctrl-z: Undo. 
* Ctrl-r: Redo.
* Ctrl-a: Select all.
* Ctrl-s: Saving, also in Insert mode.
* Ctrl-Space: Activates autocompletion.
* Shift-q: Close current buffer.
* Shift-Right: Move to next buffer `->`.
* Shift-Left: Move to previous buffer `<-`.

## Additional Settings
* The .vimrc file contains various settings for syntax highlighting, code navigation, and other features.
* Specific settings are defined for Python, JavaScript, TypeScript, HTML, CSS, SASS, YAML, JSON, and more languages.
* Airline theme is set to powerlineish.
* Indentation settings are defined for different filetypes.
* Various mappings are provided for easier movement, saving, and navigating between buffers and splits.

For more details and specific usage instructions, refer to the comments in the .vimrc file.

This documentation provides an overview of the plugins, settings, hotkeys, and languages supported by the Vundle Vim configuration. 
Users can follow the installation instructions and explore the various features and enhancements offered by this configuration.

## License
This project is licensed under the MIT License
