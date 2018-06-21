mkdir -p ~/.local; mkdir -p ~/projects
cd ~/projects

# install zsh
cd /tmp
wget https://sourceforge.net/projects/zsh/files/zsh/5.5.1/zsh-5.5.1.tar.gz/download
mv ./download zsh-5.5.1.tar.gz; tar -xzvf ./zsh-5.5.1.tar.gz
cd ./zsh-5.5.1
./configure --prefix=$HOME/.local; make; make install; zsh

# fetch dot files
cd ~/projects
git clone https://github.com/AkihikoWatanabe/dotfiles.git
cp ./dotfiles/.tmux.conf ~; cp ./dotfiles/.vimrc ~; cp ./dotfiles/.zshrc ~

# install pyenv
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
#echo '# for pyenv' >> ~/.profile
#echo 'export PYENV_ROOT=$HOME/.pyenv' >> ~/.profile
#echo 'export PATH=$PYENV_ROOT/bin:$PATH' >> ~/.profile
#echo 'eval "$(pyenv init -)"' >> ~/.profile
source ~/.profile
#echo `which pyenv`
#echo '' >> ~/.zshrc 

# install python 3.6.5
pyenv install 3.6.5
pyenv global 3.6.5
pip install --upgrade pip

# install pyenv-virtualenv
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
#echo '# for pyenv-virtualenv' >> ~/.profile
#echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.profile
#echo '' >> ~/.zshrc 

# install powerline
pip install powerline-status
#echo '# for powerline' >> ~/.zshrc
#echo 'powerline-daemon -q' >> ~/.zshrc
#echo '. /home/awatanabe/.pyenv/versions/3.6.5/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh' >> ~/.zshrc
#echo 'run-shell "powerline-daemon -q"' >> ~/.tmux.conf
#echo 'source "/home/awatanabe/.pyenv/versions/3.6.5/lib/python3.6/site-packages/powerline/bindings/tmux/powerline.conf"' >> ~/.tmux.conf
#echo '' >> ~/.zshrc 

# install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
#echo '# for zsh-syngtax-highlighting' >> ~/.zshrc
#echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
#echo '' >> ~/.zshrc

# install zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-history-substring-search.git
#echo '# for zsh-history-substring-search' >> ~/.zshrc
#echo "source /home/awatanabe/projects/zsh-history-substring-search/zsh-history-substring-search.zsh" >> ~/.zshrc
#echo '' >> ~/.zshrc

# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions
#echo '# for zsh-autosuggestions' >> ~/.zshrc
#echo "source /home/awatanabe/projects/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
#echo '' >> ~/.zshrc

# install fzy (requirements for enhancd)
git clone https://github.com/jhawthorn/fzy.git
cd ./fzy
sed -e 's/PREFIX?=\/usr\/local/PREFIX?=\/home\/awatanabe\/.local/g' ./Makefile > Makefile
make; make install 
# install enhancd
git clone https://github.com/b4b4r07/enhancd.git
#echo '# for enhancd' >> ~/.zshrc
#echo 'source /home/awatanabe/projects/enhancd/init.sh' >> ~/.zshrc
#echo '' >> ~/.zshrc

# install anyframe
# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
# install anyframe
git clone https://github.com/mollifier/anyframe.git
#echo '# for anyframe' >> ~/.zshrc
#echo 'fpath=(/home/awatanabe/projects/anyframe(N-/) $fpath)' >> ~/.zshrc
#echo 'autoload -Uz anyframe-init' >> ~/.zshrc
#echo 'anyframe-init' >> ~/.zshrc
#echo "bindkey '^x^r' anyframe-widget-execute-history" >> ~/.zshrc
#echo "bindkey '^r' anyframe-widget-put-history" >> ~/.zshrc
#echo "bindkey '^K' up-line-or-history		# move history up like vim" >> ~/.zshrc
#echo "bindkey '^J' down-line-or-history	# move history down like vim" 
>> ~/.zshrc
