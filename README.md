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

## ls colors (dircolors)

`.dircolors` replaces the default `LS_COLORS` for better visibility on a dark e-ink terminal.

### Install

```bash
cp .dircolors ~/.dircolors
source ~/.bashrc   # already hooks ~/.dircolors if dircolors is available
```

### What changed and why

On e-ink, ANSI colors map to gray levels based on their luminance. On a **dark (black) terminal**, low-luminance colors — especially blue — are nearly indistinguishable from the background.

| Luminance | Colors | Readable on dark e-ink? |
|---|---|---|
| ~100% | white | ✅ very visible |
| ~90% | yellow | ✅ visible |
| ~70% | cyan | ✅ ok |
| ~50% | green | ⚠️ marginal |
| ~30% | red | ⚠️ marginal |
| ~10% | blue | ❌ nearly invisible |

| Type | Default color | New color | Reason |
|---|---|---|---|
| Directories | bold blue `01;34` | **bold white** `01;37` | Blue ≈ black on dark e-ink |
| Executables | bold green `01;32` | **bold yellow** `01;33` | Green is medium-dark |
| Archives `.tar/.gz/…` | bold red `01;31` | **bold yellow** `01;33` | Red is dark on e-ink |
| Symlinks | bold cyan `01;36` | bold cyan `01;36` | Already ok, kept as-is |
| Images / audio | bold magenta `01;35` | cyan `00;36` | Magenta is dark, media is secondary |
| `.swp`, `.bak`, `*~` | dark gray `00;90` | **white** `00;37` | `00;90` = completely invisible on black |

---

## Bash prompt (PS1)

`bashrc-example` contains an e-ink optimized prompt. The relevant line:

```bash
PS1='...\[\033[01;37m\]\u@\h\[\033[00m\]:\[\033[48;5;254;01;30m\]\w\[\033[00m\]\$ '
```

| Part | Code | Reason |
|---|---|---|
| `user@host` | `01;37` bold white | Default green (`01;32`) is too dark on e-ink |
| `:` | plain | Separator, no color needed |
| `~/path` | `48;5;254;01;30` light gray bg + bold black text | Path needs to stand out; foreground colors alone are unreliable on e-ink — a background block is always visible regardless of color rendering |
| `$` | plain | |

**Why a background block for the path:** foreground colors depend on the terminal's palette and how e-ink maps them to grays. A background fill is independent of that — the contrast between the gray block and the black terminal is always clear.

**Path background options tried** (swap the `48;5;254` part to switch):

| Code | Hex | Feel |
|---|---|---|
| `47;01;30` | ~`#bcbcbc` | Standard gray, good but a touch dark |
| `48;5;252` | `#d0d0d0` | Slightly lighter |
| `48;5;254` | `#e4e4e4` | **Current** — one step below pure white, perfect balance |
| `07` | `#ffffff` | Pure white reverse — too bright |

### Install

The change is already in `bashrc-example`. To apply just the prompt line, replace the PS1 block in your `~/.bashrc` with the one from `bashrc-example`.

---

## Why pure backgrounds matter on e-ink

E-ink screens refresh differently from LCD. When a pixel needs to change between two non-exact gray values, the display has to run a full waveform cycle on that pixel, causing visible flickering. Pure white (`#ffffff`) and pure black (`#000000`) use optimized fast-refresh modes. Themes like the default `morning` use `#e4e4e4` as the background, which forces every pixel on screen into the slow path — hence the flicker.
