set EDITOR nvim
set INTEL_LICENSE_FILE $HOME/intel/LICENSE_VTUNE.lic
set -gx PATH /usr/local/bin $PATH
set -gx PATH ~/.cargo/bin $PATH

if test $XDG_CURRENT_DESKTOP != "kde"
    set -gx QT_QPA_PLATFORMTHEME 'qt5ct'
    set -gx QT_STYLE_OVERRIDE kvantum
end
