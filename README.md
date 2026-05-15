# Agno Theme Pack

Pacote de temas inspirado nas cores do Agno da imagem enviada.

## Incluído

- `vscode/agno-dark-theme`: extensão completa para VS Code
- `jetbrains/Agno Dark.icls`: tema para IntelliJ, GoLand, Rider, PyCharm etc.
- `sublime-text/Agno Dark.sublime-color-scheme`: tema para Sublime Text
- `vim-neovim/colors/agno-dark.vim`: colorscheme para Vim/Neovim

## VS Code

```bash
cp -r vscode/agno-dark-theme ~/.vscode/extensions/
```

Reinicie o VS Code e selecione:

```text
Preferences: Color Theme -> Agno Dark
```

Também pode testar em modo desenvolvimento:

```bash
code vscode/agno-dark-theme
```

Depois pressione `F5`.

## JetBrains / Rider / GoLand / IntelliJ

Vá em:

```text
Settings -> Editor -> Color Scheme -> Import Scheme
```

Selecione:

```text
jetbrains/Agno Dark.icls
```

## Sublime Text

Copie:

```text
sublime-text/Agno Dark.sublime-color-scheme
```

para:

```text
Packages/User/
```

Depois selecione o tema em:

```text
Preferences -> Select Color Scheme -> Agno Dark
```

## Vim / Neovim

Copie:

```bash
cp vim-neovim/colors/agno-dark.vim ~/.config/nvim/colors/
```

No `init.vim`:

```vim
colorscheme agno-dark
```

No `init.lua`:

```lua
vim.cmd.colorscheme("agno-dark")
```
