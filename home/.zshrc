
#1. improve terminal usabillity
#
#2. npm
#
#3. Python
#
#4. Keys
#
#5. Homebrew
#
#6. Jumpshell
#
#X. SDKMAN Obligatory at the end of the file
#
#
#
	[[ -s /Users/drostej/.autojump/etc/profile.d/autojump.sh ]] && source /Users/drostej/.autojump/etc/profile.d/autojump.sh

	autoload -U compinit && compinit -u

# 1. make terminal better
#---------------------------------------------------------------------------------------------------
alias ls="/usr/local/bin/exa"
alias vi="vim"
alias aws="/usr/local/bin/aws"
alias brew="/usr/local/bin/brew"
alias kdiff3="/usr/local/bin/kdiff3"

# 2. nodeJS configuration                                                                          
#---------------------------------------------------------------------------------------------------
# documentation https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md   

NPM_PACKAGES="${HOME}/.npm-packages"

DE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"

PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

export PATH="$HOME/.rbenv/bin:$PATH"
export NVM_DIR="/Users/drostej/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


# 3. Python configuration                                                                          
#---------------------------------------------------------------------------------------------------
PATH="~/Library/Python/2.7/bin:/Applications/:${PATH}"
export PATH
$(boot2docker shellinit 2> /dev/null)

# 4.Keys
#---------------------------------------------------------------------------------------------------
ssh-add ~/.ssh/jdrostehh\@gmail.com

# 5.homebrew
#---------------------------------------------------------------------------------------------------
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# 6. jumpshell
# [ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# SDKMan, Java, groovy and mvn setup
#---------------------------------------------------------------------------------------------------

export JAVA_HOME=export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

export PATH="$HOME/.rbenv/bin:$PATH"
export NVM_DIR="/Users/drostej/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export SDKMAN_DIR="/Users/drostej/.sdkman"
[[ -s "/Users/drostej/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/drostej/.sdkman/bin/sdkman-init.sh"
