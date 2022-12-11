alias 'editzsh'='vi ~/.zshrc'
alias 'srczsh'='source ~/.zshrc'
alias 'todo'='grep --color=auto -nri todo ~/Desktop ~/Documents ~/Downloads ~/Projects'
alias 'rpi'='ssh pi@rpi'
alias 'showpiip'='cat /etc/hosts'
alias 'gs'='git status'
alias 'ga'='git add '
alias 'gc'='git commit -m '
alias 'gl'='git log'
alias 'gd'='git diff'
alias 'encrypt'='gpg -c '
alias 'decrypt'='gpg -d '
alias 'pypher'='docker run -it --rm pypher'
alias 'help'='echo "editzsh: edit ~/.zshrc in vi\n\
srczsh: source ~/.zshrc\n\
todo: show todos\nkillallcontainers: kill all docker containers\n\
rpi: ssh into RPI (static entry in /etc/hosts\nshowpiip: show rpi static entry in /etc/hosts\n\
gs: git status\nga: git add <file>\ngc \"<msg>\": git commit -m \"<msg>\"\ngl: git log\ngd: git diff\n\
encrypt <filepath>: symmetrically encrypt file, will prompt for passphrase\n\
decrypt <filepath>: symmertrically decrypt file, will prompt for passphrase\n\
s3list: list contents of <env>S3PERSONALSTORAGEBUCKEPATH\n\
s3get <filename>: download file from bucket <env>S3PERSONALSTORAGEBUCKEPATH\n\
s3upload <filepath>: upload file to bucket <env>S3PERSONALSTORAGEBUCKEPATH\n\
s3delete <filename>: delete file from bucket <env>S3PERSONALSTORAGEBUCKEPATH\n\
sto <path/to/dir|filename|>: get disk space taken up by <arg> and each file within dir\n\
ggpt <path/to/lib_name>: generates boilerplate for Go library development\n\
pypher: run Pypher in a docker container"  | column -s : -t'

export S3PERSONALSTORAGEBUCKETPATH=
export S3PERSONALSTORAGEIAMKEY=
export S3PERSONALSTORAGECLIPROFILE=

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
autoload -U colors && colors
#PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}

PS1="%{$fg[yellow]%}%~ %{$reset_color%}
> "
export PATH=/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/bin
export GOPATH=$HOME/go
