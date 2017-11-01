export PATH=~/.local/bin:$PATH
export PATH=$PATH:/home/lr/watanabe/new_gxp3/gxp-3.07

# CUDA
export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH

# cuDNN
export CPATH=/home/lr/watanabe/local/cudnn-7.0/include:$CPATH
export LIBRARY_PATH=/home/lr/watanabe/local/cudnn-7.0/lib64:$LIBRARY_PATH
export LD_LIBRARY_PATH=/home/lr/watanabe/local/cudnn-7.0/lib64:$LD_LIBRARY_PATH

# CONDA
export PATH=/home/lr/watanabe/anaconda2/bin:$PATH

# maven for HAPS
export M2_HOME=~/ips_implementation/text_segmentation/apache-maven-3.2.5/
export PATH=${M2_HOME}/bin:${PATH}

# for powerline
powerline-daemon -q
. ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

# for syntax highlighting
source /home/lr/watanabe/projects/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# for history substring search
source /home/lr/watanabe/projects/zsh-history-substring-search/zsh-history-substring-search.zsh

# for zsh-autosuggestions
source /home/lr/watanabe/projects/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=090'

# for enhancd
source /home/lr/watanabe/projects/enhancd/init.sh

# for anyframe
fpath=(/home/lr/watanabe/projects/anyframe(N-/) $fpath)

autoload -Uz anyframe-init
anyframe-init

bindkey '^x^r' anyframe-widget-execute-history
bindkey '^r' anyframe-widget-put-history
bindkey '^K' up-line-or-history		# move history up like vim
bindkey '^J' down-line-or-history	# move history down like vim

