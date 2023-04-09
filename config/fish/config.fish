if status is-interactive
    # Commands to run in interactive sessions can go here
end
set fish_function_path $fish_function_path ~/plugin-foreign-env/functions

# Source Nix setup script
fenv source ~/.nix-profile/etc/profile.d/nix.sh

source ~/.config/fish/aliases
source ~/.config/fish/environment

starship init fish | source

neofetch
