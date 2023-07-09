parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}

autoload -U colors && colors
PS1="%{$fg[red]%}%n%{$reset_color%} %{$fg[green]%}%~%{$fg[blue]%}$(parse_git_branch) %{$reset_color%}%% "