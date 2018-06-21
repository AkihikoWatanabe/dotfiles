# for powerline
powerline-daemon -q
. /home/awatanabe/.pyenv/versions/3.6.5/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh

# for zsh-syntax-highlighting
source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# for zsh-history-substring-search
source /home/awatanabe/projects/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# for zsh-autosuggestions
source /home/awatanabe/projects/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=090'

# for enhancd
source /home/awatanabe/projects/enhancd/init.sh

# for anyframe
fpath=(/home/awatanabe/projects/anyframe(N-/) $fpath)
autoload -Uz anyframe-init
anyframe-init

bindkey '^x^r' anyframe-widget-execute-history
bindkey '^r' anyframe-widget-put-history
bindkey '^K' up-line-or-history		# move history up like vim
bindkey '^J' down-line-or-history	# move history down like vim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
