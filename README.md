# eink-settings

Themes and config for using Claude Code and Vim on an e-ink screen.

E-ink screens need exact background colors (no arbitrary grays) and high contrast text — otherwise they flicker and dither. These themes are built with that in mind.

---

## Claude Code themes

Two themes in the root folder, install by copying to `~/.claude/themes/`.

| File | Name | Description |
|---|---|---|
| `eink.json` | E-Ink | Minimal: only fixes the two dimmest UI elements (`inactive`, `subtle`) |
| `eink-high-contrast.json` | E-Ink High Contrast | Overrides everything to white/bright gray for maximum visibility |

### Install

```bash
cp eink.json eink-high-contrast.json ~/.claude/themes/
```

Then add to `~/.claude/settings.json`:

```json
{
  "theme": "custom:eink"
}
```

Or use `custom:eink-high-contrast` for the bolder variant. You can also pick interactively with `/theme` inside Claude Code.

---

## Vim themes

Three color schemes in `vim/`, targeting a black terminal background (SSH/tmux).

| File | Name | Base | Description |
|---|---|---|---|
| `morning-eink.vim` | morning-eink | light | `morning` colors with pure `#ffffff` background — fixes e-ink flicker |
| `eink-light.vim` | eink-light | light | Custom grayscale scheme, white background |
| `eink-dark.vim` | eink-dark | dark | Custom grayscale scheme, black background |

All three use bold, italic, and background fills to differentiate syntax elements instead of relying purely on color (which e-ink renders as indistinguishable grays).

### Install

```bash
cp vim/*.vim ~/.vim/colors/
```

Add to your `~/.vimrc` (see `vim/vimrc-example` for the full file):

```vim
syntax on
filetype plugin indent on

" true colors — required for exact hex values, fixes SSH+tmux
if has('termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme morning-eink
```

### Cycling themes

Inside Vim, cycle through all three themes with any of:

```
:Theme        " always works
:T            " short alias (disable if you use neoterm or vim-test)
\t            " works when tmux isn't intercepting the \ key
```

Order: `morning-eink` → `eink-light` → `eink-dark` → back.

---

## Why pure backgrounds matter on e-ink

E-ink screens refresh differently from LCD. When a pixel needs to change between two non-exact gray values, the display has to run a full waveform cycle on that pixel, causing visible flickering. Pure white (`#ffffff`) and pure black (`#000000`) use optimized fast-refresh modes. Themes like the default `morning` use `#e4e4e4` as the background, which forces every pixel on screen into the slow path — hence the flicker.
