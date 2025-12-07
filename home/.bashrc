# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# home bin
if [ -d ~/bin ]
then
   PATH=$PATH:~/bin
fi

# local bin
if [ -d ~/.local/bin ]
then 
   PATH=$PATH:~/.local/bin
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


alias ls='ls --color=auto'


PS1='[\u@\h \W]\$ '
#PS1='\n\[\033[1;33m\] ∋∈ ∋∈ ∋∈   \[\033[0m\]\[\033[3;34m\]\w \[\033[1;32m\]\[\033[0m\] \[\033[3;33m\]'
