if status is-interactive
    # Commands to run in interactive sessions can go here
end
set fish_function_path $fish_function_path ~/plugin-foreign-env/functions

# Source alias and environment Variables
source ~/.config/fish/aliases
source ~/.config/fish/environment

starship init fish | source
zoxide init fish | source

neofetch
