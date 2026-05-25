# Agno Theme Pack

Pacote de temas inspirado na paleta oficial do Agno.

Guia de instalacao para cada editor, shell e terminal: [INSTALL.md](INSTALL.md).

## Incluído

- `vscode/agno-dark-theme`: extensão completa para VS Code
- `zed`: extensão de temas para Zed
- `jetbrains/*.icls`: temas para IntelliJ, GoLand, Rider, PyCharm etc.
- `sublime-text/*.sublime-color-scheme`: temas para Sublime Text
- `vim-neovim/colors/*.vim`: colorschemes para Vim/Neovim
- `bash/agno.bash`: prompt para Bash
- `zsh/agno.zsh`: prompt para Zsh
- `oh-my-zsh/agno.zsh-theme`: tema para Oh My Zsh
- `oh-my-bash/agno/agno.theme.sh`: tema para Oh My Bash
- `gnome-terminal/install-agno-dark.sh`: perfil Agno Dark para GNOME Terminal
- `xfce-terminal/terminalrc`: tema Agno Dark para XFCE Terminal

## Variações

- `Agno Dark`
- `Agno One Dark`
- `Agno Light`
- `Agno Light Soft`
- `Agno Light Graphite`

## VS Code

```bash
cp -r vscode/agno-dark-theme ~/.vscode/extensions/
```

Reinicie o VS Code e selecione:

```text
Preferences: Color Theme -> Agno ...
```

Também pode testar em modo desenvolvimento:

```bash
code vscode/agno-dark-theme
```

Depois pressione `F5`.

## Zed

Instale como dev extension:

```text
zed: install dev extension -> selecione a pasta zed/
```

Depois selecione:

```text
theme selector -> Agno ...
```

## JetBrains / Rider / GoLand / IntelliJ

Vá em:

```text
Settings -> Editor -> Color Scheme -> Import Scheme
```

Selecione:

```text
jetbrains/Agno ....icls
```

## Sublime Text

Copie os temas desejados:

```text
sublime-text/*.sublime-color-scheme
```

para:

```text
Packages/User/
```

Depois selecione o tema em:

```text
Preferences -> Select Color Scheme -> Agno ...
```

## Vim / Neovim

Copie os colorschemes:

```bash
cp vim-neovim/colors/*.vim ~/.config/nvim/colors/
```

No `init.vim`:

```vim
colorscheme agno-one-dark
```

No `init.lua`:

```lua
vim.cmd.colorscheme("agno-one-dark")
```

## Bash

Adicione ao `~/.bashrc`:

```bash
source /caminho/para/agno-theme/bash/agno.bash
```

## Zsh

Adicione ao `~/.zshrc`:

```zsh
source /caminho/para/agno-theme/zsh/agno.zsh
```

## Oh My Zsh

Copie o tema:

```bash
cp oh-my-zsh/agno.zsh-theme ~/.oh-my-zsh/custom/themes/
```

Depois configure no `~/.zshrc`:

```zsh
ZSH_THEME="agno"
```

## Oh My Bash

Copie a pasta do tema:

```bash
mkdir -p ~/.oh-my-bash/custom/themes/agno
cp oh-my-bash/agno/agno.theme.sh ~/.oh-my-bash/custom/themes/agno/
```

Depois configure no `~/.bashrc`:

```bash
OSH_THEME="agno"
```

## GNOME Terminal

Instale o perfil `Agno Dark`:

```bash
bash gnome-terminal/install-agno-dark.sh
```

Para instalar e definir como perfil padrao:

```bash
bash gnome-terminal/install-agno-dark.sh --default
```

## XFCE Terminal

Instale o tema `Agno Dark`:

```bash
bash xfce-terminal/install-agno-dark.sh
```

O instalador cria um backup do `terminalrc` atual e atualiza somente as chaves de cor.
