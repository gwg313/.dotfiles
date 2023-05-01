if status is-interactive
    # Commands to run in interactive sessions can go here
end
set fish_function_path $fish_function_path ~/plugin-foreign-env/functions

set fish_greeting

# Source alias and environment Variables
source ~/.config/fish/environment
source ~/.config/fish/aliases

starship init fish | source
zoxide init fish | source

neofetch
# if type -q keychain
#   /usr/bin/keychain $HOME/.ssh/id_ed25519
#   source $HOME/.keychain/$HOST-sh
#   eval (keychain --eval --agents ssh -Q --quiet id_rsa --nogui)
# end
thefuck --alias | source
