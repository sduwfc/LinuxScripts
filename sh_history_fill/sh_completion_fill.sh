#!/bin/bash

echo '"\e[A": history-search-backward' >> ~/.inputrc
echo '"\e[B": history-search-forward' >> ~/.inputrc
echo 'set show-all-if-ambiguous on' >> ~/.inputrc
echo 'set completion-ignore-case on' >> ~/.inputrc
bind -f  ~/.inputrc
