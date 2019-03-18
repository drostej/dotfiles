# dotfiles

Summary of my common dotfiles

TODO
idea console call for diffs documentaion w
ssh config w n
historysubstring search w
Rufo - ruby Text formatter for w
clippy - multiple clipboard -brew cask install clipy-w
tunnelblick - brew cask install tunnelblick
zjump w

Includes
ls -la exa
loop over .ssh folder
jumpshell
vim link - vim 
exa - brew install exa
zsh-completion
jumpshell

### Ok I get it, How do I install the thing?
Open up a Terminal and launch zsh.

``$ zsh```
Then clone the git repository.

```$ git clone``` --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
Create a Zsh configuration by copying the configuration files provided by the repo.


*$ setopt EXTENDED_GLOB
  for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  done*
  
Lastly, set Zsh as your default shell.

$ chsh -s /bin/zsh
To apply all the changes, simply restart your terminal.

The official repository provides more instructions and troubleshooting here.

#### Prezto customisation in .zpreztorc
## Prompt:
zstyle ':prezto:module:prompt' theme 'clint'

clint is a rich text theme

Themes can be found here:
https://mikebuss.com/2014/04/07/customizing-prezto/







https://medium.com/@oldwestaction/beautifying-your-terminal-with-zsh-prezto-powerlevel9k-9e8de2023046