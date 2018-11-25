set -x PATH ~/.local/bin $PATH
set -x LD_LIBRARY_PATH ~/.local/lib $LD_LIBRARY_PATH

set -x PATH ~/.cargo/bin $PATH

if status --is-login
    set PPID (echo (ps --pid %self -o ppid --no-headers) | xargs)
    if ps --pid $PPID | grep ssh
        tmux has-session -t remote; and tmux attach-session -t remote; or tmux new-session -s remote; and kill %self
        echo "tmux failed to start; using plain fish shell"
    end
end
