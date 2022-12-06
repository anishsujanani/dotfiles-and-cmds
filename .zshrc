alias 'todo'='grep --color=auto -nri todo ~/Desktop ~/Documents ~/Projects'
alias 'rpi'='ssh pi@rpi'
alias 'gs'='git status'
alias 'ga'='git add .'
alias 'gc'='git commit -m '
alias 'gl'='git log'
alias 'gd'='git diff'
alias 'encrypt'='gpg -c '
alias 'decrypt'='gpg -d '
alias 'help'='echo "todo: show todos\nkillallcontainers: kill all docker containers\nrpi: ssh into RPI (static entry in /etc/hosts\nshowpiip: show rpi static entry in /etc/hosts\ngs: git status\nga: git add .\ngc \"<msg>\": git commit -m \"<msg>\"\ngl: git log\ngd: git diff\nencrypt <filepath>: symmetrically encrypt file, will prompt for passphrase\ndecrypt <filepath>: symmertrically decrypt file, will prompt for passphrase\ns3list: list contents of <env>S3PERSONALSTORAGEBUCKEPATH\ns3get <filename>: download file from bucket <env>S3PERSONALSTORAGEBUCKEPATH\ns3upload <filepath>: upload file to bucket <env>S3PERSONALSTORAGEBUCKEPATH\ns3delete <filename>: delete file from bucket <env>S3PERSONALSTORAGEBUCKEPATH\nsto <path/to/dir|filename|>: get disk space taken up by <arg> and each file within dir"  | column -s : -t'

export S3PERSONALSTORAGEBUCKETPATH=
export S3PERSONALSTORAGEIAMKEY=
export S3PERSONALSTORAGECLIPROFILE=

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
autoload -U colors && colors
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}
$ "
export PATH=/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/bin
export GOPATH=$HOME/go
