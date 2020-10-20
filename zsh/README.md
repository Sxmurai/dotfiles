<h1 align="center">Installation Process</h1>

1. Install zsh (`sudo pacman -S zsh`)
2. Make zsh default shell (`chsh -s /usr/bin/zsh`)
3. Restart
4. Install oh-my-zsh (`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`)
5. Install other shit:
  - 1. `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
  - 2. `git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions`
  - 3. `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`
  - 4. [pfetch](https://websetnet.net/pfetch-linux-and-unix-hardware-information-tool/)
  - 5. lolcat (`sudo pacman -S lolcat`)
