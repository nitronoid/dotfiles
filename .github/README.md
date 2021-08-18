# New machine setup

## Install deps
```
sudo apt-get update
sudo apt install build-essentials gnupg2 cmake python2 python3 pkg-config libtool libtool-bin unzip gettext curl
```

## Git config
```
git config --global user.name "Jack Diver"
git config --global user.email "jackdiver@hotmail.co.uk"
git config --global core.pager "less"
git config --global core.autocrlf "input"
git config --global color.ui true
git config --global color.ui true
git config --global color."diff-highlight".oldNormal "red bold"
git config --global color."diff-highlight".oldHighlight "red bold 52"
git config --global color."diff-highlight".newNormal "green bold"
git config --global color."diff-highlight".newHighlight "green bold 22"
git config --global color."diff".meta 11
git config --global color."diff".frag "magenta bold"
git config --global color."diff".commit "yellow bold"
git config --global color."diff".old "red bold"
git config --global color."diff".new "green bold"
git config --global color."diff".whitespace "red reverse"
git config --global alias.p4 "!'git-p4'"
git config --global alias.plog "log --compact-summary --graph"
git config --global git-p4.detectRenames true
git config --global git-p4.detectCopies true
git config --global gpg.program /usr/bin/gpg2

# ssh key for git
ssh-keygen -t rsa -b 4096 -C "jackdiver@hotmail.co.uk"
# Add ~/.ssh/id_rsa.pub to github

# gpg key for git
gpg --full-generate-key
gpg --list-secret-keys --keyid-format LONG
gpg --armor --export <key>
# add gpg key to github
git config --global commit.gpgSign true
git config --global user.signingKey <key>
```

## Install rust
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# Install rust tools
cargo install exa fd-find ripgrep
```

## Clone dotfiles
```
git clone --bare git@github.com:nitronoid/dotfiles ${HOME}/dotfiles
alias dotfiles='/usr/bin/git --git-dir=${HOME}/dotfiles --work-tree=${HOME}'
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```

## Dev workspace
```
mkdir -p ~/dev/git
mkdir ~/dev/local
mkdir ~/dev/hg
```

## Clone and build tools
```
git clone git@github.com:neovim/neovim.git ~/dev/git/neovim
git clone --depth 1 git@github.com:junegunn/fzf.git ~/dev/git/fzf

# Build tools
~/dev/git/fzf/install
cd ~/dev/git/neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo && sudo make install
```

## Install node for coc-clangd
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
# Might require moving sourcing from .bashrc to .profile
nvm install node
nvm install --lts
```

## Neovim setup
```
# Make backup dirs
mkdir -p ~/.vim/undo_files
mkdir -p ~/.vim/backups

# Get vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install plugins
nvim +PlugInstall
:CocInstall coc-clangd
:CocCommand clangd.install
```

