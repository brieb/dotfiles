#!bash
tmux start-server

if ! $(tmux has-session -t 'FSC'); then
cd /Applications/MAMP/htdocs/dorm_website

env TMUX= tmux start-server \; set-option -g base-index 1 \; new-session -d -s 'FSC' -n 'editor'
tmux set-option -t 'FSC' default-path /Applications/MAMP/htdocs/dorm_website


tmux new-window -t 'FSC':2 -n 'shell'

tmux new-window -t 'FSC':3 -n 'logs'

tmux new-window -t 'FSC':4 -n 'database'

tmux new-window -t 'FSC':5 -n 'rjs'

tmux new-window -t 'FSC':6 -n 'sass'

tmux new-window -t 'FSC':7 -n 'dotfiles'


# set up tabs and panes

# tab "editor"

tmux send-keys -t 'FSC':1 '' C-m


# tab "shell"

tmux send-keys -t 'FSC':2 '' C-m


# tab "logs"

tmux send-keys -t 'FSC':3 'tail -f /Applications/MAMP/logs/php_error.log' C-m

tmux splitw -t 'FSC':3
tmux send-keys -t 'FSC':3 'tail -f /Applications/MAMP/logs/apache_error.log' C-m

tmux splitw -t 'FSC':3
tmux send-keys -t 'FSC':3 'tail -f /Applications/MAMP/logs/mysql_error_log.err' C-m

tmux select-layout -t 'FSC':3 'even-vertical'


# tab "database"

tmux send-keys -t 'FSC':4 'mql -Ddorm_website' C-m

tmux splitw -t 'FSC':4
tmux send-keys -t 'FSC':4 'vim qtmp.sql' C-m

tmux select-layout -t 'FSC':4 'even-horizontal'


# tab "rjs"

tmux send-keys -t 'FSC':5 'cd assets/js && echo "rjs -o app.build.js"' C-m


# tab "sass"

tmux send-keys -t 'FSC':6 'cd assets && compass watch -s compressed .' C-m


# tab "dotfiles"

tmux send-keys -t 'FSC':7 'cd ~/dotfiles' C-m



tmux select-window -t 'FSC':1

fi

if [ -z $TMUX ]; then
    tmux -u attach-session -t 'FSC'
else
    tmux -u switch-client -t 'FSC'
fi