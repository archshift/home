set DIR $HOME/.config/fish 

set -x EDITOR nvim
set -gx PATH ~/.local/bin $PATH

set ENVVAR_FILE $DIR/(hostname).envvars.fish
source $ENVVAR_FILE

set fish_greeting ""
