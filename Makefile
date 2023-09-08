.PHONY: install clean load push backup recover new_branch

all: backup

install:
	@make backup
	@echo "Proceeding with installation..."
	@cp ./confs/shell/.zshrc ~/.zshrc
	@cp ./confs/shell/robbyrussell-mod.zsh-theme ~/.oh-my-zsh/themes/robbyrussell.zsh-theme
	@cp ./confs/tmux/.tmux.conf ~/.tmux.conf
	@cp ./confs/tmux/.tmux ~/.tmux
	@cp -R ./confs/nvim ~/.config/nvim
	@mkdir -p ~/.gm
	@cp -R ./confs/gm/* ~/.gm/
	@(cd ~/.gm/codebase && cargo build --release)
	@cp ~/.gm/codebase/target/release/gm ~/.gm/bin/gm
	@rm -rf ~/.gm/codebase/target

clean:
	@rm -rf ./confs/*

load-nvim:
	@mkdir -p ./confs/nvim
	@cp -R ~/.config/nvim/* ./confs/nvim/

load:
	@mkdir -p ./confs/shell
	@cp ~/.zshrc ./confs/shell/.zshrc
	@mkdir -p ./confs/tmux
	@cp ~/.tmux.conf ./confs/tmux/.tmux.conf
	@cp -R ~/.tmux ./confs/tmux/
	@cp ~/.alacritty.yml ./confs/alacritty/.alacritty.yml
	@mkdir -p ./confs/gm
	@cp -R ~/.gm/* ./confs/gm
	@make load-nvim

push:
	@make clean
	@make load
	@git add .
	@git commit -m "automated dot updates :camera_flash:"
	@git push
	@echo "Successfully pushed to dots 🚀"

backup:
	@mkdir -p ~/.dotbackup/ 
	@cp -R ~/.zshrc ~/.dotbackup/
	@cp -R -f ~/.oh-my-zsh/ ~/.dotbackup/ 
	@cp ~/.tmux.conf ~/.dotbackup/
	@cp -R -f ~/.config ~/.dotbackup/
	@cp -R ~/.gm ~/.dotbackup/
	@echo "All dotfiles backed up..."

recover:
	@cp -R ~/.dotbackup/* ~/
	@echo "All backup files successfully recovered!"

new_branch:
	@git checkout -b update/$$(date +%Y-%m-%d)
	@git add .
	@git commit -m "automated dot updates :camera_flash:"
	@git push
