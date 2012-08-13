" Pathogen: go through bundles for loading plugins
call pathogen#infect()

" Change the default leader
let leader=','

" Fixes stupid backup files from coming up all over the place
set backup      " keep a backup file
set backupdir=$HOME/.vimbak
