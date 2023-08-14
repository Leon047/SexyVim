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

This README provides documentation for the Vundle Vim configuration provided in the `.vimrc` file.

## Installation

1. Make sure you have Vundle installed in your Vim setup. If not, follow the instructions to install it:

  ```bash
   git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  ```
2. Copy the contents of the provided .vimrc file and paste it into your ~/.vimrc file.

3. Launch Vim and run :PluginInstall to install all the plugins specified in the configuration.

## Plugin List
This configuration uses several plugins managed by Vundle to enhance your Vim experience:

* Vundle (gmarik/Vundle.vim): Manages plugins within Vim.

### Code/Project Navigation

* NERDTree (scrooloose/nerdtree): A tree explorer plugin for Vim.
* Unite.vim (Shougo/unite.vim): Enables navigation between buffers and files.
* Tagbar (majutsushi/tagbar): Provides a class/module browser.
* SimpylFold (tmhedberg/SimpylFold): Offers code folding.

### Other
* vim-airline (vim-airline/vim-airline): Provides a status/tabline for Vim.
* vim-airline-themes (vim-airline/vim-airline-themes): Offers themes for vim-airline.
* conque-term (rosenfeld/conque-term): Allows using consoles as buffers.
* vim-surround (tpope/vim-surround): Helps with working with parentheses, brackets, quotes, XML tags, and more.
* indentLine (Yggdroot/indentLine): Adds indent guides.
* bracey.vim (turbio/bracey.vim): Provides live preview for HTML, CSS, and JS.
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
* vimerl (jimenezrick/vimerl): Erlang plugin for Vim.
* alchemist.vim (slashmili/alchemist.vim): Provides Elixir support for Vim.
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
* vim-python-combined (mitsuhiko/vim-python-combined): Combined Python 2/3 support for Vim.
* vim-python-pep8-indent (hynek/vim-python-pep8-indent): Provides PEP8 indentation.
* vim-virtualenv (jmcantrell/vim-virtualenv): Offers Virtualenv support in Vim.
* vim-cython (tshirtman/vim-cython): Adds Cython support.
* vim-terraform (hashivim/vim-terraform): Provides Terraform syntax highlight.
* vim-terraform-completion (juliosueiras/vim-terraform-completion): Adds Terraform auto-completion.
* Dockerfile.vim (ekalinin/Dockerfile.vim): Provides syntax highlighting for Dockerfiles.
* vim-docker-tools (kkvh/vim-docker-tools): Offers Docker-tools.

### Hotkeys
* F1: Toggles NERDTree to browse the list of files in the current directory.
* F2: Toggles Tagbar to show a class/module browser.
* F3: Opens Unite buffer to navigate through currently opened buffers.
* F4: Aligns indents in the current code.
* F5: Opens ConqueTerm split for running Python scripts.
* F6: Saves and performs Syntastic syntax checking.
* F7: Opens ConqueTerm split to run Python3 scripts.
* F8: Opens Bracey live preview.
* Ctrl+Space: Activates autocompletion.
* Ctrl+j, Ctrl+k, Ctrl+i, Ctrl+l: Easier navigation between splits.
* Alt+s, Alt+v: Creates horizontal and vertical splits.
* Alt+j, Alt+k, Alt+i, Alt+l: Changes size of splits.
* Alt+c: Runs PymodeLint to check Python code against PEP8.

## Additional Settings
* The .vimrc file contains various settings for syntax highlighting, code navigation, and other features.
* Python, JavaScript, TypeScript, HTML, CSS, SASS, YAML, Terraform, and more languages are supported with specific settings.
* Airline theme is set to powerlineish.
* Indentation settings are defined for different filetypes.
* Various mappings for easier movement, saving, and navigating between buffers and splits are provided.

For more details and specific usage instructions, refer to the comments in the .vimrc file.

This documentation provides an overview of the plugins, settings, hotkeys, and languages supported by the Vundle Vim configuration. 
Users can follow the installation instructions and explore the various features and enhancements offered by this configuration.
