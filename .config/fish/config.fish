if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path $HOME/.local/bin/

oh-my-posh init fish | source
oh-my-posh init fish --config $HOME/.config/omp/gor.omp.json | source

alias cat bat

alias ls exa
alias ll "ls -l"
alias la "ls -la"
alias l ll

alias vim nvim
alias vi nvim
alias v nvim

alias cls clear
alias py python3

alias lg lazygit
