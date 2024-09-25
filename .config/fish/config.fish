if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

fish_add_path $HOME/.local/bin/
fish_add_path $HOME/bin/

oh-my-posh init fish | source
oh-my-posh init fish --config $HOME/.config/omp/gor.omp.json | source

if test -d /app/venv
    source /app/venv/bin/activate.fish
end

alias cat bat

alias ls eza
alias ll "ls -l"
alias la "ls -la"
alias l ll

alias vim nvim
alias vi nvim
alias v nvim

alias cls clear
alias py python3

alias lg lazygit

alias config "vim $HOME/.config/"
alias reload_fish ". $HOME/.config/fish/config.fish"

alias omp_gor "oh-my-posh init fish --config $HOME/.config/omp/gor.omp.json | source"
alias omp_pallette "oh-my-posh init fish --config $HOME/.config/omp/pallette.omp.json | source"
