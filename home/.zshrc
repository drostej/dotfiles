#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
#
#1. improve terminal usabillity
#
#2. npm
#
#3. Python
#
#4. Homebrew
#
#5. Jumpshell
#
#6. Amazon cloud
#
#7. Local secrets
#
#9. VPN-Firma
#


# 1. make terminal better
#---------------------------------------------------------------------------------------------------
alias ls="/usr/local/bin/exa"
alias vi="vim"
alias aws="/usr/local/bin/aws"
alias brew="/usr/local/bin/brew"
alias kdiff3="/usr/local/bin/kdiff3"
alias tree="exa --tree --level=2 --long"
alias art="aws-refresh-token-darwin"

# 2. nodeJS configuration
#---------------------------------------------------------------------------------------------------
#node makes bash slow - thisway disabled
#documentation https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md

#NPM_PACKAGES="${HOME}/.npm-packages"

#DE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"

#PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
#unset MANPATH # delete if you already modified MANPATH elsewhere in your config
#MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

#export PATH="$HOME/.rbenv/bin:$PATH"
#export NVM_DIR="/Users/drostej/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


# 3. Python configuration
#---------------------------------------------------------------------------------------------------
PATH="~/Library/Python/2.7/bin:/Applications/:${PATH}"
export PATH
(boot2docker shellinit 2> /dev/null)

# 4.homebrew
#---------------------------------------------------------------------------------------------------
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# 5. jumpshell
#[[ -s /Users/drostej/.autojump/etc/profile.d/autojump.sh ]] && source /Users/drostej/.autojump/etc/profile.d/autojump.sh
#autoload -U compinit && compinit -u
source zjump/zjump.zsh

# 6.Amazon
#-----------------------------------------------------------------------------------------------------
#
export AWS_IAM_USER_NAME="juergen.droste"
export AWS_MFA_SERIAL_NUMBER="arn:aws:iam::291603880373:mfa/juergen.droste"
export AWS_TARGET_ROLE_ARN="arn:aws:iam::121696051528:role/AdminsFullaccess"
export AWS_PROFILE="tefde-ccm-winback-dev"

# 7. Local secrets
#-----------------------------------------------------------------------------------------------------
# Stash your environment variables in ~/.localrc. This means they'll stay out
# of your main dotfiles repository (which may be public, like this one), but
# you'll have access to them in your scripts.
if [[ -a ~/.localrc ]]
then
 source ~/.localrc
fi

# 8. Setup rbenv to replace the native osx ruby with rbenv
#-----------------------------------------------------------------------------------------------------
eval "$(rbenv init -)"

# 9. VPN-Devlan Telefonica Setup
#-----------------------------------------------------------------------------------------------------
alias vpn-firma="sudo openconnect --background --quiet --disable-ipv6 --protocol=gp --usergroup=portal  --authgroup go-disi.sg.de.o2.com --user drostej go.sg.de.o2.com"
