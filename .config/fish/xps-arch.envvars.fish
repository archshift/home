fish_vi_key_bindings

set EDITOR nvim
set -gx PATH /usr/local/bin $PATH

set -gx PATH /opt/ti/mspgcc/bin $PATH
set -gx PATH /usr/lib/emscripten $PATH
set -gx PATH ~/.cargo/bin $PATH
for dir in ~/.gem/ruby/*
    set -gx PATH $dir/bin $PATH
end

set -gx BINARYEN /usr/
set -Ux QT_QPA_PLATFORMTHEME gtk2

set -gx RISCV /opt/keystone-riscv
set -gx PATH $RISCV/bin $PATH
set -gx PATH /opt/riscv64-linux-musl-cross/bin $PATH
set -gx KEYSTONE_DIR ~/Dev/keystone
set -gx KEYSTONE_SDK_DIR $KEYSTONE_DIR/sdk/build

set -gx DEVKITPRO /opt/devkitpro
set -gx CTRULIB $DEVKITPRO/libctru
set -gx DEVKITARM $DEVKITPRO/devkitARM
