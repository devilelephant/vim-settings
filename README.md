https://shapeshed.com/vim-packages/#how-it-works


If you store your vim configuration in ~/.vim a new folder needs to be created within this folder to hold plugins. This is somewhat confusingly ~/.vim/pack/foo. The folder foo can be anything. You can keep it at foo, change it to "plugins" or your whatever you like


~/.vim
  /backups      // created by vim, ignore.
  /plugins      // add/remove autoloaded plugins here
  /pack/p/opt   // hold packages that are not loaded automatically. Packages added in the opt folder may be loaded using :packadd packagename
  /pack/p/start // hold packages that are loaded automatically at start (I have it an alias back to /plugins)

