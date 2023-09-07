# ZSH Bash Shell Config
export ZSH="$HOME/.oh-my-zsh"
eval "$(zoxide init zsh)"
ZSH_THEME="robbyrussell"
PROMPT_EOL_MARK=''
plugins=(
  git
  bundler
  dotenv
  zsh-autosuggestions
  rake
  zsh-syntax-highlighting
  rbenv
  ruby
  npm
)

source $ZSH/oh-my-zsh.sh

# Go Version Manager
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

# Optimism Shortcuts
alias glint="golangci-lint run -E goimports,sqlclosecheck,bodyclose,asciicheck,misspell,errorlint --timeout 5m -e \"errors.As\" -e \"errors.Is\" ./..."
alias gtest="go test -v ./..."
alias to="tmux a -t optimism"
alias op-dev-connect="gcloud container clusters get-credentials oplabs-dev-client-primary --region us-central1 --project oplabs-dev-client"
alias op-dev-ctx="kubie ctx"
alias opc="nvm use 16 && yarn lint && forge test -vvv && yarn gas-snapshot && yarn storage-snapshot"
alias og="gcloud auth login --update-adc"

# Rust Shortcuts
alias ru="rustup update"
alias spark="cargo +nightly fmt --all"
alias flint="cargo check --all && cargo +nightly fmt -- --check && cargo +nightly clippy --all --all-features -- -D warnings && cargo test --all --all-features"
alias rock='spark && flint'
alias eagle="cargo test -- --show-output"

# Reth Shortcuts
alias rethc="rethf && rethfmt && rethclippy"
alias rethclippy="cargo +nightly clippy --all --all-features -- -A clippy::incorrect_clone_impl_on_copy_type -A clippy::arc_with_non_send_sync"
alias rethf="cargo +nightly fmt --all"
alias rethfmt="cargo +nightly fmt --all --check"
alias rethtests="cargo +nightly nextest run --locked --all-features --workspace --exclude examples --exclude ef-tests -E 'kind(lib)' -E 'kind(bin)' -E 'kind(proc-macro)'"
alias rethdoctest="cargo +nightly test --doc --all --all-features"
alias rethci="rethfmt && rethclippy && rethtests && rethdoctest"

alias orethclippy="cargo +nightly clippy --all --features optimism -- -A clippy::incorrect_clone_impl_on_copy_type -A clippy::arc_with_non_send_sync"
alias orethtests="cargo +nightly nextest run --locked --features optimism --workspace --exclude examples --exclude ef-tests -E 'kind(lib)' -E 'kind(bin)' -E 'kind(proc-macro)'"
alias orethdoctest="cargo +nightly test --doc --all --features optimism"

# Graphite Aliases
alias g="gt"
alias gtu="npm install -g @withgraphite/graphite-cli@latest"
alias gtsy="git checkout develop && git pull && gt repo sync && gt usr && gt ss"

# Tiling Shortcuts
alias center="^+⌥+e && ^+⌥+c"

# Tmux Shortcuts
alias tl="tmux ls"
alias ts="tmux source-file ~/.tmux.conf"
alias tpmi="~/.tmux/plugins/tpm/bin/install_plugins"
alias tpmu="~/.tmux/plugins/tpm/bin/update_plugins all"
alias tpmr="~/.tmux/plugins/tpm/bin/clean_plugins"

# Useful Aliases
alias n="nvim"
alias c="clear"
alias gochecks="gosec -fmt=json -out=results.json ./..."
alias whatsmyip="dig +short txt ch whoami.cloudflare @1.0.0.1"
alias tailscale=/Applications/Tailscale.app/Contents/MacOS/Tailscale
alias gm=/usr/local/bin/gm
alias s="source ~/.zshrc"
alias gb="git-branchless"
alias dc="docker-compose"
alias kx="kubectx"
alias k="kubectl"
alias python=/usr/bin/python3
alias sleep="pmset sleepnow"
alias fixsubmodules="git submodule foreach git reset --hard"

eval "$(~/.cargo/bin/rtx activate zsh)"
