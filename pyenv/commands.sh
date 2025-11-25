# https://github.com/pyenv/pyenv

# follow instructions on website for install

# I used
paru -S pyenv

# for fish shell
set -Ux PYENV_ROOT $HOME/.pyenv
test -d $PYENV_ROOT/bin; and fish_add_path $PYENV_ROOT/bin

# add
pyenv init - fish | source
# to
~/.config/fish/config.fish


# usage
pyenv install -l
pyenv isntall 3.14
pyenv install -l | grep 3.14

# select just for current shell session
pyenv shell <version> 
pyenv shell 3.14