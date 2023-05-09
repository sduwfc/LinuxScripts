#!/bin/bash

echo '"\e[A": history-search-backward' >> ~/.inputrc
echo '"\e[B": history-search-forward' >> ~/.inputrc
echo 'set show-all-if-ambiguous on' >> ~/.inputrc
echo 'set completion-ignore-case on' >> ~/.inputrc

sed -i 's/^HISTSIZE=.*$/HISTSIZE=2000000/' ~/.bashrc
sed -i 's/^HISTFILESIZE=.*$/HISTFILESIZE=2000000/' ~/.bashrc
source ~/.bashrc
echo -e 'run this: \n bind -f ~/.inputrc'

