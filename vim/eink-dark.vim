set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "eink-dark"

" Gray scale used (dark bg, light text):
"   #ffffff  pure white    — keywords, operators, normal text
"   #e0e0e0  near white    — function names
"   #cccccc  light gray    — types, class names
"   #aaaaaa  medium gray   — strings, numbers, constants
"   #888888  mid-dark      — preprocessor, special
"   #666666  dark gray     — comments (clearly muted)
"   #333333  very dark     — line numbers, non-text chrome

" Core
hi Normal          guifg=#ffffff guibg=#000000 ctermfg=15  ctermbg=0
hi NonText         guifg=#333333 guibg=#000000 ctermfg=8   ctermbg=0
hi SpecialKey      guifg=#333333               ctermfg=8
hi EndOfBuffer     guifg=#333333 guibg=#000000 ctermfg=8   ctermbg=0

" Syntax — 6 distinct levels
hi Comment         guifg=#666666               ctermfg=8   gui=italic    cterm=italic
hi String          guifg=#aaaaaa               ctermfg=7   gui=italic    cterm=italic
hi Character       guifg=#aaaaaa               ctermfg=7
hi Number          guifg=#aaaaaa               ctermfg=7
hi Float           guifg=#aaaaaa               ctermfg=7
hi Boolean         guifg=#cccccc               ctermfg=15  gui=bold      cterm=bold
hi Constant        guifg=#aaaaaa               ctermfg=7
hi Identifier      guifg=#ffffff               ctermfg=15
hi Function        guifg=#e0e0e0               ctermfg=15  gui=bold      cterm=bold
hi Statement       guifg=#ffffff               ctermfg=15  gui=bold      cterm=bold
hi Keyword         guifg=#ffffff               ctermfg=15  gui=bold      cterm=bold
hi Conditional     guifg=#ffffff               ctermfg=15  gui=bold      cterm=bold
hi Repeat          guifg=#ffffff               ctermfg=15  gui=bold      cterm=bold
hi Exception       guifg=#ffffff               ctermfg=15  gui=bold      cterm=bold
hi Operator        guifg=#ffffff               ctermfg=15
hi PreProc         guifg=#888888               ctermfg=8
hi Include         guifg=#888888               ctermfg=8
hi Define          guifg=#888888               ctermfg=8
hi Macro           guifg=#888888               ctermfg=8
hi Type            guifg=#cccccc               ctermfg=15  gui=bold      cterm=bold
hi StorageClass    guifg=#cccccc               ctermfg=15  gui=bold      cterm=bold
hi Structure       guifg=#cccccc               ctermfg=15  gui=bold      cterm=bold
hi Typedef         guifg=#cccccc               ctermfg=15  gui=bold      cterm=bold
hi Special         guifg=#888888               ctermfg=8
hi SpecialChar     guifg=#aaaaaa               ctermfg=7
hi Delimiter       guifg=#ffffff               ctermfg=15
hi Tag             guifg=#cccccc               ctermfg=15
hi Underlined      guifg=#ffffff               ctermfg=15  gui=underline cterm=underline
hi Error           guifg=#ffffff guibg=#333333 ctermfg=15  ctermbg=8     gui=bold  cterm=bold
hi Todo            guifg=#000000 guibg=#888888 ctermfg=0   ctermbg=7     gui=bold  cterm=bold

" Editor chrome
hi LineNr          guifg=#333333 guibg=#000000 ctermfg=8   ctermbg=0
hi CursorLine      guifg=NONE    guibg=#111111             ctermbg=8     cterm=none gui=none
hi CursorLineNr    guifg=#aaaaaa guibg=#111111 ctermfg=7   ctermbg=8     gui=bold  cterm=bold
hi CursorColumn    guibg=#111111               ctermbg=8
hi ColorColumn     guibg=#111111               ctermbg=8
hi SignColumn      guifg=#333333 guibg=#000000 ctermfg=8   ctermbg=0
hi FoldColumn      guifg=#333333 guibg=#000000 ctermfg=8   ctermbg=0
hi Folded          guifg=#666666 guibg=#111111 ctermfg=8   ctermbg=8     gui=italic cterm=italic
hi VertSplit       guifg=#333333 guibg=#000000 ctermfg=8   ctermbg=0
hi StatusLine      guifg=#000000 guibg=#ffffff ctermfg=0   ctermbg=15    gui=bold  cterm=bold
hi StatusLineNC    guifg=#000000 guibg=#666666 ctermfg=0   ctermbg=8
hi TabLine         guifg=#aaaaaa guibg=#222222 ctermfg=7   ctermbg=8
hi TabLineFill     guifg=#aaaaaa guibg=#222222 ctermfg=7   ctermbg=8
hi TabLineSel      guifg=#000000 guibg=#ffffff ctermfg=0   ctermbg=15    gui=bold  cterm=bold

" Selection & search
hi Visual          guifg=#ffffff guibg=#333333 ctermfg=15  ctermbg=8
hi Search          guifg=#000000 guibg=#aaaaaa ctermfg=0   ctermbg=7
hi IncSearch       guifg=#000000 guibg=#ffffff ctermfg=0   ctermbg=15    gui=bold  cterm=bold
hi MatchParen      guifg=#ffffff guibg=#444444 ctermfg=15  ctermbg=8     gui=bold  cterm=bold

" Popup menu
hi Pmenu           guifg=#ffffff guibg=#222222 ctermfg=15  ctermbg=8
hi PmenuSel        guifg=#000000 guibg=#aaaaaa ctermfg=0   ctermbg=7
hi PmenuSbar       guibg=#333333               ctermbg=8
hi PmenuThumb      guibg=#888888               ctermbg=7

" Messages & misc
hi Title           guifg=#ffffff               ctermfg=15  gui=bold      cterm=bold
hi Directory       guifg=#cccccc               ctermfg=15  gui=bold      cterm=bold
hi WarningMsg      guifg=#ffffff guibg=#333333 ctermfg=15  ctermbg=8     gui=bold  cterm=bold
hi ErrorMsg        guifg=#ffffff guibg=#444444 ctermfg=15  ctermbg=8     gui=bold  cterm=bold
hi ModeMsg         guifg=#ffffff               ctermfg=15  gui=bold      cterm=bold
hi MoreMsg         guifg=#ffffff               ctermfg=15  gui=bold      cterm=bold
hi Question        guifg=#ffffff               ctermfg=15  gui=bold      cterm=bold
hi WildMenu        guifg=#000000 guibg=#ffffff ctermfg=0   ctermbg=15    gui=bold  cterm=bold
hi Conceal         guifg=#333333 guibg=#000000 ctermfg=8   ctermbg=0
hi SpellBad        guifg=#ffffff               ctermfg=15  gui=undercurl cterm=underline
hi SpellCap        guifg=#aaaaaa               ctermfg=7   gui=undercurl cterm=underline
hi DiffAdd         guifg=#ffffff guibg=#222222 ctermfg=15  ctermbg=8
hi DiffDelete      guifg=#444444 guibg=#111111 ctermfg=8   ctermbg=8
hi DiffChange      guifg=#ffffff guibg=#111111 ctermfg=15  ctermbg=8
hi DiffText        guifg=#ffffff guibg=#333333 ctermfg=15  ctermbg=8     gui=bold  cterm=bold
