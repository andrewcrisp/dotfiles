# NeoVim configuration

## Installation on Windows
I installed from winget on my home laptop.  I'll probably use choco next time.  See the project page for downloads and details:
(https://github.com/neovim/neovim/blob/master/INSTALL.md)

Once installed, I used lazy.nvim as my package manager.  I followed a youtube tutorial for initial setup and module selection.  (https://www.youtube.com/watch?v=zHTeCSVAFNY&list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn).

Instead of watching all that again, find your config directory with this vim command `echo stdpath('config')`.  That should tell you where your nvim install is expecting its files.  Drop the entire contents of the nvim/ directory in there.  

The modules start with the `init.lua` file, which will load the others.  `config.lazy` in particular starts off everything else.

Lazy will install treesitter and mason, which both also install things.  When you add the config files, the next time you launch NeoVim it should detect and install everything.  

### Prerequisite
The neorg module requires luarocks be installed.  While writing this, I realized that my lua install was questionable.  So, until I get to installing it again, I recommend checking the [luabinaries](https://luabinaries.sourceforge.net/) page and the [LuaRocks](https://github.com/luarocks/luarocks/wiki/Download) page.

