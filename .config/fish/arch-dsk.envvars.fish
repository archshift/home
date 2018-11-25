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
