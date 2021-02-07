CLONING
=======
    cd ~/Workspace
    git clone --recurse-submodules https://github.com/devilelephant/vim-settings.git


ADDING SUBMODULES
=================
 
https://shapeshed.com/vim-packages/

cd to plugins
use command

    git submodule add https://github.com/othree/xml.vim.git
    git add .gitmodules vim/pack/shapeshed/start/vim-airline 
    git commit

Notice the change in .gitmodules

UPDATING SUBMODULES 
===================
    git submodule update --remote --merge
    git commit

REMOVING SUBMODULES
===================
    git submodule deinit vim/pack/shapeshed/start/vim-airline
    git rm vim/pack/shapeshed/start/vim-airline rm -Rf
    .git/modules/vim/pack/shapeshed/start/vim-airline  // Is this needed?
    git commit

HOW THIS WORKS
==============
https://shapeshed.com/vim-packages/#how-it-works

If you store your vim configuration in `~/.vim` a new folder needs to be created within this folder to hold plugins. This is somewhat confusingly `~/.vim/pack/foo`. The folder foo can be anything. You can keep it at foo, change it to "plugins" or your whatever you like

    ~/.vim
      /backups      // created by vim, ignore.
      /plugins      // add/remove autoloaded plugins here
      /pack/p/opt   // hold packages that are not loaded automatically. Packages added in the opt folder may be loaded using :packadd packagename
      /pack/p/start // hold packages that are loaded automatically at start (I have it an alias back to /plugins)

