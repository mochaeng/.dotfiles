eval "$(starship init zsh)"

fpath+=~/.zfunc
autoload -Uz compinit && compinit

# completion with arrow-keys
zstyle ':completion:*' menu select

# start nvm (lazy start)
#alias liftnvm=". /usr/share/nvm/init-nvm.sh"
alias rs="redshift -P -O"
#alias exercism="~/bin/exercism"
#alias sail="./vendor/bin/sail"
alias nvim="~/nvim.appimage"
alias py_activate="source venv/bin/activate"
# alias mouse_speed="xinput --set-prop 14 162 0.4 0 0 0 0.4 0 0 0 1"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# paths
export GOPATH="$HOME/go/bin"
path+=("~/bin")
path+=("~/bin/")
path+=("/home/campos/.local/bin")
path+=("/usr/local/go/bin")
path+=("$GOPATH/bin/")
path+=("/home/campos/.local/bin")

. "$HOME/.asdf/asdf.sh"

# pnpm
export PNPM_HOME="/home/campos/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/home/campos/.bun/_bun" ] && source "/home/campos/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/home/campos/.opam/opam-init/init.zsh' ]] || source '/home/campos/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration
