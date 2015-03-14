git remote add -f vundle https://github.com/gmarik/Vundle.vim
git subtree add --prefix .vim/vundle vundle master
git subtree pull --prefix .vim/vundle vundle master
