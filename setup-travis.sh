# Download Emacs and Hugo
mkdir -p $HOME/downloads
pushd $HOME/downloads
wget -q -c https://github.com/gohugoio/hugo/releases/download/v0.32.4/hugo_0.32.4_Linux-64bit.deb
wget -q -c https://github.com/npostavs/emacs-travis/releases/download/bins/emacs-bin-26.tar.gz
popd

# Setup Emacs
tar xf $HOME/downloads/emacs-bin-26.tar.gz -C /

# Setup Hugo
sudo dpkg -i $HOME/downloads/hugo_0.32.4_Linux-64bit.deb

# Setup ox-hugo
if [ -d $HOME/downloads/ox-hugo ]
then
    pushd $HOME/downloads/ox-hugo
    git pull origin master
    popd
else
    pushd $HOME/downloads/
    git clone https://github.com/kaushalmodi/ox-hugo.git
    popd
fi

# Setup Hugo theme
mkdir themes/
git clone https://github.com/punchagan/hugo-universal-theme.git themes/custom
