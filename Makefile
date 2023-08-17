.PHONY: install push

install:
	@make backup
	@echo "Proceeding with installation..."
	@cp ./.zshrc ~/.zshrc
	@cp ./robbyrussell-mod.zsh-theme ~/.oh-my-zsh/themes/robbyrussell.zsh-theme
	@cp ./.tmux.conf ~/.tmux.conf
	@cp -R ./.config/* ~/.config/
	@cp -R ./.gm ~/
	@(cd ~/.gm/codebase && cargo build --release)
	@cp ~/.gm/codebase/target/release/gm ~/.gm/bin/gm
	@rm -rf ~/.gm/codebase/target

push:
	@cp ~/.zshrc ./.zshrc
	@cp ~/.tmux.conf ./.tmux.conf
	@cp ~/.alacritty.yml ./.alacritty.yml
	@cp -R ~/.tmux ./.tmux
	@cp -R ~/.gm ./
	@mkdir -p ./.config/nvim/
	@cp -R ~/.config/nvim/* ./.config/nvim/
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
