" morning-eink: morning colorscheme with pure-white backgrounds for e-ink
" All syntax colors are identical to morning; only guibg values are changed
" to exact values so e-ink doesn't flicker trying to dither gray backgrounds.

set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = 'morning-eink'

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['#ffffff', '#a52a2a', '#ff00ff', '#6a0dad', '#008787', '#2e8b57', '#6a5acd', '#bcbcbc', '#0000ff', '#a52a2a', '#ff00ff', '#6a0dad', '#008787', '#2e8b57', '#6a5acd', '#000000']
endif

hi! link Terminal       Normal
hi! link LineNrAbove    LineNr
hi! link LineNrBelow    LineNr
hi! link CurSearch      Search
hi! link CursorLineFold CursorLine
hi! link CursorLineSign CursorLine
hi! link StatuslineTerm Statusline
hi! link StatuslineTermNC StatuslineNC
hi! link MessageWindow  Pmenu
hi! link PopupNotification Todo
hi! link PopupSelected  PmenuSel

" ── Core ─────────────────────────────────────────────── bg: #ffffff (pure white)
hi Normal          guifg=#000000 guibg=#ffffff  gui=NONE  cterm=NONE  ctermfg=16  ctermbg=231
hi EndOfBuffer     guifg=#0000ff guibg=#ffffff  gui=bold  cterm=bold  ctermfg=21  ctermbg=231
hi NonText         guifg=#0000ff guibg=#eeeeee  gui=bold  cterm=bold  ctermfg=21  ctermbg=255
hi SpecialKey      guifg=#bcbcbc guibg=NONE     gui=NONE  cterm=NONE  ctermfg=250

" ── Editor chrome ────────────────────────────────────── bg: #eeeeee or #f0f0f0
hi CursorLine      guifg=NONE    guibg=#eeeeee  gui=NONE  cterm=NONE  ctermbg=255
hi CursorColumn    guifg=NONE    guibg=#eeeeee  gui=NONE  cterm=NONE  ctermbg=255
hi CursorLineNr    guifg=#a52a2a guibg=NONE     gui=bold  cterm=bold  ctermfg=124
hi ColorColumn     guifg=#000000 guibg=#eeeeee  gui=NONE  cterm=NONE  ctermfg=16  ctermbg=255
hi LineNr          guifg=#a52a2a guibg=NONE     gui=NONE  cterm=NONE  ctermfg=124
hi FoldColumn      guifg=#00008b guibg=NONE     gui=NONE  cterm=NONE  ctermfg=18
hi SignColumn      guifg=#00008b guibg=NONE     gui=NONE  cterm=NONE  ctermfg=18
hi Folded          guifg=#00008b guibg=#eeeeee  gui=NONE  cterm=NONE  ctermfg=18  ctermbg=255
hi Conceal         guifg=#878787 guibg=NONE     gui=NONE  cterm=NONE  ctermfg=102

" ── Status / splits ──────────────────────────────────── unchanged from morning
hi StatusLine      guifg=#eeeeee guibg=#000000  gui=bold  cterm=bold  ctermfg=255 ctermbg=16
hi StatusLineNC    guifg=#bcbcbc guibg=#000000  gui=NONE  cterm=NONE  ctermfg=250 ctermbg=16
hi VertSplit       guifg=#bcbcbc guibg=#000000  gui=NONE  cterm=NONE  ctermfg=250 ctermbg=16
hi TabLine         guifg=#000000 guibg=#bcbcbc  gui=underline cterm=underline ctermfg=16 ctermbg=250
hi TabLineFill     guifg=NONE    guibg=NONE     gui=reverse   cterm=reverse
hi TabLineSel      guifg=#000000 guibg=#ffffff  gui=bold  cterm=bold  ctermfg=16  ctermbg=231

" ── Selection / search ───────────────────────────────── unchanged from morning
hi Visual          guifg=NONE    guibg=#d0d0d0  gui=NONE  cterm=NONE  ctermbg=252
hi VisualNOS       guifg=NONE    guibg=#0000ff  gui=NONE  cterm=NONE  ctermbg=21
hi Search          guifg=#ffffff guibg=#6a0dad  gui=NONE  cterm=NONE  ctermfg=255 ctermbg=55
hi IncSearch       guifg=#2e8b57 guibg=NONE     gui=reverse cterm=reverse ctermfg=29
hi MatchParen      guifg=#ffffff guibg=#6a5acd  gui=NONE  cterm=NONE  ctermfg=255 ctermbg=62
hi QuickFixLine    guifg=#000000 guibg=#ffff00  gui=NONE  cterm=NONE  ctermfg=16  ctermbg=226
hi WildMenu        guifg=#000000 guibg=#ffff00  gui=bold  cterm=bold  ctermfg=16  ctermbg=226

" ── Popup menu ───────────────────────────────────────── unchanged from morning
hi Pmenu           guifg=#000000 guibg=#b2b2b2  gui=NONE  cterm=NONE  ctermfg=16  ctermbg=249
hi PmenuSel        guifg=#000000 guibg=#ffff00  gui=NONE  cterm=NONE  ctermfg=16  ctermbg=226
hi PmenuSbar       guifg=NONE    guibg=#ffffff  gui=NONE  cterm=NONE  ctermbg=231
hi PmenuThumb      guifg=NONE    guibg=#000000  gui=NONE  cterm=NONE  ctermbg=16
hi PmenuMatch      guifg=#a52a2a guibg=#b2b2b2  gui=NONE  cterm=NONE  ctermfg=124 ctermbg=249
hi PmenuMatchSel   guifg=#a52a2a guibg=#ffff00  gui=NONE  cterm=NONE  ctermfg=124 ctermbg=226

" ── Messages ─────────────────────────────────────────── unchanged from morning
hi Error           guifg=#ff0000 guibg=#ffffff  gui=reverse cterm=reverse ctermfg=196 ctermbg=231
hi ErrorMsg        guifg=#ff0000 guibg=#ffffff  gui=reverse cterm=reverse ctermfg=196 ctermbg=231
hi WarningMsg      guifg=#6a0dad guibg=NONE     gui=bold  cterm=bold  ctermfg=55
hi MoreMsg         guifg=#2e8b57 guibg=NONE     gui=bold  cterm=bold  ctermfg=29
hi ModeMsg         guifg=#000000 guibg=NONE     gui=bold  cterm=bold  ctermfg=16
hi Question        guifg=#008787 guibg=NONE     gui=bold  cterm=bold  ctermfg=30
hi Title           guifg=#a52a2a guibg=NONE     gui=bold  cterm=bold  ctermfg=124
hi Directory       guifg=#008787 guibg=NONE     gui=bold  cterm=bold  ctermfg=30

" ── Cursor ───────────────────────────────────────────── unchanged from morning
hi Cursor          guifg=#ffffff guibg=#2e8b57  gui=NONE  cterm=NONE  ctermfg=255 ctermbg=29
hi lCursor         guifg=#ffffff guibg=#a52a2a  gui=NONE  cterm=NONE  ctermfg=255 ctermbg=124

" ── Spell ────────────────────────────────────────────── unchanged from morning
hi SpellBad        guifg=#ff0000 guibg=NONE guisp=#ff0000 gui=undercurl cterm=underline ctermfg=196
hi SpellCap        guifg=#00d700 guibg=NONE guisp=#00d700 gui=undercurl cterm=underline ctermfg=40
hi SpellLocal      guifg=#a52a2a guibg=NONE guisp=#a52a2a gui=undercurl cterm=underline ctermfg=124
hi SpellRare       guifg=#2e8b57 guibg=NONE guisp=#2e8b57 gui=undercurl cterm=underline ctermfg=29

" ── Diff ─────────────────────────────────────────────── unchanged from morning
hi DiffAdd         guifg=#ffffff guibg=#5f875f  gui=NONE  cterm=NONE  ctermfg=231 ctermbg=65
hi DiffChange      guifg=#ffffff guibg=#5f87af  gui=NONE  cterm=NONE  ctermfg=231 ctermbg=67
hi DiffText        guifg=#000000 guibg=#c6c6c6  gui=NONE  cterm=NONE  ctermfg=16  ctermbg=251
hi DiffDelete      guifg=#ffffff guibg=#af5faf  gui=NONE  cterm=NONE  ctermfg=231 ctermbg=133

" ── Syntax ───────────────────────────────────────────── identical to morning
hi Comment         guifg=#0000ff guibg=NONE     gui=NONE  cterm=NONE  ctermfg=21
hi Constant        guifg=#ff00ff guibg=#eeeeee  gui=NONE  cterm=NONE  ctermfg=201 ctermbg=255
hi Identifier      guifg=#008787 guibg=NONE     gui=NONE  cterm=NONE  ctermfg=30
hi Statement       guifg=#a52a2a guibg=NONE     gui=bold  cterm=bold  ctermfg=124
hi PreProc         guifg=#6a0dad guibg=NONE     gui=NONE  cterm=NONE  ctermfg=55
hi Type            guifg=#2e8b57 guibg=NONE     gui=bold  cterm=bold  ctermfg=29
hi Special         guifg=#6a5acd guibg=NONE     gui=NONE  cterm=NONE  ctermfg=62
hi Underlined      guifg=#6a5acd guibg=NONE     gui=underline cterm=underline ctermfg=62
hi Ignore          guifg=NONE    guibg=NONE     gui=NONE  cterm=NONE
hi Todo            guifg=#000000 guibg=#ffff00  gui=NONE  cterm=NONE  ctermfg=16  ctermbg=226
