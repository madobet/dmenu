# dmenu - dynamic menu

**dmenu** is an efficient dynamic menu for X.


## Requirements

In order to build dmenu you need the Xlib header files.


## Installation

dmenu is installed into the `/usr/local` namespace by default(if necessary as root):

    make -j clean install

You can change it by setting `PREFIX` (for example, install at `~/.local`):

    make PREFIX=~/.local -j clean install


## Running dmenu

See the man page for details.
