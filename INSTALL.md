# Como instalar os temas Agno

Este guia mostra como instalar cada tema do pacote Agno Theme Pack.

## Variacoes disponiveis

- `Agno Dark`
- `Agno One Dark`
- `Agno Light`
- `Agno Light Soft`
- `Agno Light Graphite`

Os editores recebem todas as variacoes quando o formato suporta mais de um tema. Os terminais e prompts usam a paleta `Agno Dark`.

## VS Code

Instalacao pela pasta da extensao:

```bash
mkdir -p ~/.vscode/extensions
cp -r vscode/agno-dark-theme ~/.vscode/extensions/
```

Depois reinicie o VS Code e selecione:

```text
Preferences: Color Theme -> Agno ...
```

Instalacao pelo arquivo `.vsix`, se o comando `code` estiver disponivel:

```bash
code --install-extension vscode/agno-dark-theme/agno-dark-theme-0.0.8.vsix
```

## Zed

Abra o comando de instalacao de extensao de desenvolvimento:

```text
zed: install dev extension
```

Selecione a pasta:

```text
zed/
```

Depois selecione o tema:

```text
theme selector -> Agno ...
```

## JetBrains, Rider, GoLand, IntelliJ e PyCharm

No editor, abra:

```text
Settings -> Editor -> Color Scheme -> Import Scheme
```

Importe um dos arquivos:

```text
jetbrains/Agno Dark.icls
jetbrains/Agno One Dark.icls
jetbrains/Agno Light.icls
jetbrains/Agno Light Soft.icls
jetbrains/Agno Light Graphite.icls
```

Depois selecione o esquema importado em:

```text
Settings -> Editor -> Color Scheme
```

## Sublime Text

Copie os arquivos de tema para a pasta `Packages/User`:

```bash
cp sublime-text/*.sublime-color-scheme ~/.config/sublime-text/Packages/User/
```

Em algumas instalacoes, o caminho pode ser:

```bash
cp sublime-text/*.sublime-color-scheme ~/.config/sublime-text-3/Packages/User/
```

Depois selecione:

```text
Preferences -> Select Color Scheme -> Agno ...
```

## Vim

Copie os colorschemes:

```bash
mkdir -p ~/.vim/colors
cp vim-neovim/colors/*.vim ~/.vim/colors/
```

No `~/.vimrc`, use uma das opcoes:

```vim
colorscheme agno-dark
colorscheme agno-one-dark
colorscheme agno-light
colorscheme agno-light-soft
colorscheme agno-light-graphite
```

## Neovim

Copie os colorschemes:

```bash
mkdir -p ~/.config/nvim/colors
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

Depois recarregue:

```bash
source ~/.bashrc
```

## Zsh

Adicione ao `~/.zshrc`:

```zsh
source /caminho/para/agno-theme/zsh/agno.zsh
```

Depois recarregue:

```zsh
source ~/.zshrc
```

## Oh My Zsh

Copie o tema:

```bash
cp oh-my-zsh/agno.zsh-theme ~/.oh-my-zsh/custom/themes/
```

Configure no `~/.zshrc`:

```zsh
ZSH_THEME="agno"
```

Depois recarregue:

```zsh
source ~/.zshrc
```

## Oh My Bash

Copie a pasta do tema:

```bash
mkdir -p ~/.oh-my-bash/custom/themes/agno
cp oh-my-bash/agno/agno.theme.sh ~/.oh-my-bash/custom/themes/agno/
```

Configure no `~/.bashrc`:

```bash
OSH_THEME="agno"
```

Depois recarregue:

```bash
source ~/.bashrc
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

Depois abra as preferencias do GNOME Terminal e selecione o perfil `Agno Dark`, caso ele nao tenha sido definido como padrao.

## XFCE Terminal

Instale o tema `Agno Dark`:

```bash
bash xfce-terminal/install-agno-dark.sh
```

O instalador cria um backup do `terminalrc` atual e atualiza somente as chaves de cor.

Depois reinicie o XFCE Terminal para ver as cores novas.
