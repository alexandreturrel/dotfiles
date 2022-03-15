# ========= #
# LOCALHOST #
# ========= #

#TMUX
alias 'tls'='tmux list-sessions'
alias 'start'='eval `ssh-agent -s` && ssh-add ~/.ssh/a.turrel.id_rsa && tmux new -d -s sshing && tmux new -d -s localhost && tmux a -t sshing'
alias 'tlocal'='tmux a -t localhost'
alias 'tssh'='tmux a -t sshing'

#JSON PRETTYFIER
alias 'prettyfier'='python -m json.tool'

#base64 encode and decode
alias 'encb64'='f(){ echo "$1" | base64 -w 0; echo; unset -f f; }; f'
alias 'decb64'='f(){ echo "$1" | base64 -d | tr \& \\n; echo; unset -f f; }; f'

alias 'sshfshelp'='echo "sshfs -o idmap=user root@serv.lfm.lan:/ /home/turrel/servers/serv"; echo "fusermount -u /home/turrel/servers/serv"'

alias 'vagrant'='vagrant.exe'
alias 'explorer'='explorer.exe .'

# === #
# SSH #
# === #

alias 'serv'='ssh root@serv.lfm.lan'

# Test-Turrel file system connection
alias 'ttfs'='sshfs -o idmap=user root@test-turrel.lfm.lan:/ /home/turrel/servers/test-turrel; cd /home/turrel/servers/test-turrel;'
