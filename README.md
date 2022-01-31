# How to use the dotfiles

* vimrc 
I am using the [vim-plug]{https://github.com/junegunn/vim-plug} pluging manager.
Copy .vimrc to the home dir like any .vimrc file. Open .vimrc using vim and ignore the warnings initially.
Enter the following command in the vim command-line mode
```shell
:PlugInstall
:source %
```

* tmux
Copy .tmux.conf to your home dir.
On the shell call the following command
```shell
tmux source ~/.tmux.conf
```
