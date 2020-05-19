set -x PATH $PATH $HOME/.local/bin 

# Perl
set -x PATH /usr/bin/vendor_perl $PATH

# Gems
set -x PATH (ruby -e 'print Gem.user_dir')/bin $PATH

# DKA
set -x PATH /opt/devkitpro/devkitARM/bin $PATH
set -x DEVKITPRO /opt/devkitpro
set -x DEVKITARM $DEVKITPRO/devkitARM
set -x CTRULIB $DEVKITPRO/libctru

# Go
set -x GOPATH $HOME/Documents/go
set -x PATH $GOPATH/bin $PATH

# Rust
set -x RUST_SRC_PATH /usr/src/rust/src

# Keystone
set -x RISCV /opt/keystone-riscv
set -x PATH /opt/keystone-riscv/bin $PATH
set -x PATH /opt/riscv64-linux-musl-cross/bin $PATH
set -x KEYSTONE_DIR ~/Dev/keystone
set -x KEYSTONE_SDK_DIR ~/Dev/keystone/sdk
