# My Emacs config

A modular, well documented, GNU Emacs config focused on simple and non-intrusive enhancing of the defaults

## Directory structure

Directory     | Description
--------------|------------
core          | Files that change the Emacs' default settings and invoke the other modules of the config
defuns        | Files that define useful utility functions
keybindings   | Local (extra-config) keybindings
modules       | Config files for packages invoked on the core files
themes        | Source code for themes not available on the repositories


## New keybindings

Shortcut     | Function
-------------|---------
F6           | Open ibuffer
F8           | Open/close neotree sidebar
F9           | Enable/disable evil-mode (vi emulation)
C-+/-        | Increase/Decrease the size of the text
C-'          | Avy - jump to things in tree-style
C-M-g        | Dumb Jump - attempt to jump to the definition of the symbol under point
C-;          | Iedit - edit multiple occurrences of the same text at the same time
C-S-c C-S-c  | Multiple cursors - edit the selected lines at the same time
M-Up/Down    | Move the line under point up/down


## Installation

On Unix, clone to ~/.emacs.d  
On Windows, clone to %appdata%\\.emacs.d and run win-fix.bat  

Open Emacs and wait for it to download and install the packages (may take a few minutes)
