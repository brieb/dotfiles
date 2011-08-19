#!bash
tmux start-server

if ! $(tmux has-session -t 'Dorm Website'); then
cd /Applications/MAMP/htdocs/dorm_website

env TMUX= tmux start-server \; set-option -g base-index 1 \; new-session -d -s 'Dorm Website' -n 'editor'
tmux set-option -t 'Dorm Website' default-path /Applications/MAMP/htdocs/dorm_website



# set up tabs and panes

# tab "editor"

tmux send-keys -t 'Dorm Website':1 'vim .' C-m

tmux splitw -t 'Dorm Website':1
tmux send-keys -t 'Dorm Website':1 '' C-m

tmux select-layout -t 'Dorm Website':1 'main-vertical'



tmux select-window -t 'Dorm Website':1

fi

if [ -z $TMUX ]; then
    tmux -u attach-session -t 'Dorm Website'
else
    tmux -u switch-client -t 'Dorm Website'
fi