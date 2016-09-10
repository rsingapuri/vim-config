# Vim Configuration

### Cloning

It is recommended to clone this repo using git-clone's `--recursive` flag in
order to get the Vundle submodule. If you have already cloned the repository
and need to initialize the submodule run:

```
git submodule update --init --recursive
```

### Installation Instructions
You'll need to create symlinks in your home directory the `.vim` directory
and `.vimrc` file.

You'll also need to compile YouCompleteMe and Command-T.

To install YouCompleteMe:

```
cd .vim/bundle/YouCompleteMe
./install.py --clang-completer
```

You may need to install CMake, which is available through Homebrew.

To install Command-T:

```
cd .vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make
```

### Vundle Update
To update the Vundle submodule, you can run either of:

```
cd .vim/bundle/Vundle.vim
git pull origin master
```

or

```
git submodule update --init --recursive
```

where the latter will also initialize the submodule if it has not been
initialized already.
