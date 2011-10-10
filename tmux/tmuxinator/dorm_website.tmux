#!bash
tmux start-server

if ! $(tmux has-session -t 'Dorm Website'); then
cd /Applications/MAMP/htdocs/dorm_website

env TMUX= tmux start-server \; set-option -g base-index 1 \; new-session -d -s 'Dorm Website' -n 'editor'
tmux set-option -t 'Dorm Website' default-path /Applications/MAMP/htdocs/dorm_website


tmux new-window -t 'Dorm Website':2 -n 'shell'

tmux new-window -t 'Dorm Website':3 -n 'logs'

tmux new-window -t 'Dorm Website':4 -n 'database'

tmux new-window -t 'Dorm Website':5 -n 'sass'

tmux new-window -t 'Dorm Website':6 -n 'dotfiles'

tmux new-window -t 'Dorm Website':7 -n 'noise'


# set up tabs and panes

# tab "editor"

tmux send-keys -t 'Dorm Website':1 'vim .' C-m

tmux select-layout -t 'Dorm Website':1 'main-vertical'


# tab "shell"

tmux send-keys -t 'Dorm Website':2 '' C-m


# tab "logs"

tmux send-keys -t 'Dorm Website':3 'tail -f /Applications/MAMP/logs/php_error.log' C-m

tmux splitw -t 'Dorm Website':3
tmux send-keys -t 'Dorm Website':3 'tail -f /Applications/MAMP/logs/apache_error.log' C-m

tmux splitw -t 'Dorm Website':3
tmux send-keys -t 'Dorm Website':3 'tail -f /Applications/MAMP/logs/mysql_error_log.err' C-m

tmux select-layout -t 'Dorm Website':3 'even-vertical'


# tab "database"

tmux send-keys -t 'Dorm Website':4 'mql -Ddorm_website' C-m

tmux splitw -t 'Dorm Website':4
tmux send-keys -t 'Dorm Website':4 'vim qtmp.sql' C-m

tmux select-layout -t 'Dorm Website':4 'even-horizontal'


# tab "sass"

tmux send-keys -t 'Dorm Website':5 'cd assets && sass --watch sass:css' C-m


# tab "dotfiles"

tmux send-keys -t 'Dorm Website':6 'cd ~/dotfiles' C-m


# tab "noise"

tmux send-keys -t 'Dorm Website':7 '~/brownnoise.sh' C-m



tmux select-window -t 'Dorm Website':1

fi

if [ -z $TMUX ]; then
    tmux -u attach-session -t 'Dorm Website'
else
    tmux -u switch-client -t 'Dorm Website'
fi