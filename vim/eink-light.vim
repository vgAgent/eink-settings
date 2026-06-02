set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "eink-light"

" Core
hi Normal          guifg=#000000 guibg=#ffffff ctermfg=0   ctermbg=15
hi NonText         guifg=#cccccc guibg=#ffffff ctermfg=7   ctermbg=15
hi SpecialKey      guifg=#cccccc               ctermfg=7
hi EndOfBuffer     guifg=#cccccc guibg=#ffffff ctermfg=7   ctermbg=15

" Syntax
hi Comment         guifg=#888888               ctermfg=8   gui=italic    cterm=italic
hi Constant        guifg=#333333               ctermfg=0
hi String          guifg=#555555               ctermfg=0   gui=italic    cterm=italic
hi Number          guifg=#333333               ctermfg=0
hi Boolean         guifg=#000000               ctermfg=0   gui=bold      cterm=bold
hi Identifier      guifg=#000000               ctermfg=0
hi Function        guifg=#000000               ctermfg=0   gui=bold      cterm=bold
hi Statement       guifg=#000000               ctermfg=0   gui=bold      cterm=bold
hi Keyword         guifg=#000000               ctermfg=0   gui=bold      cterm=bold
hi Conditional     guifg=#000000               ctermfg=0   gui=bold      cterm=bold
hi Repeat          guifg=#000000               ctermfg=0   gui=bold      cterm=bold
hi Operator        guifg=#000000               ctermfg=0
hi PreProc         guifg=#444444               ctermfg=0
hi Include         guifg=#444444               ctermfg=0
hi Type            guifg=#333333               ctermfg=0   gui=bold      cterm=bold
hi StorageClass    guifg=#333333               ctermfg=0   gui=bold      cterm=bold
hi Structure       guifg=#333333               ctermfg=0   gui=bold      cterm=bold
hi Typedef         guifg=#333333               ctermfg=0   gui=bold      cterm=bold
hi Special         guifg=#444444               ctermfg=0
hi Delimiter       guifg=#000000               ctermfg=0
hi Underlined      guifg=#000000               ctermfg=0   gui=underline cterm=underline
hi Error           guifg=#000000 guibg=#dddddd ctermfg=0   ctermbg=7     gui=bold cterm=bold
hi Todo            guifg=#000000 guibg=#cccccc ctermfg=0   ctermbg=7     gui=bold cterm=bold

" Editor chrome
hi LineNr          guifg=#aaaaaa guibg=#ffffff ctermfg=7   ctermbg=15
hi CursorLine      guifg=NONE    guibg=#f0f0f0             ctermbg=7     cterm=none gui=none
hi CursorLineNr    guifg=#000000 guibg=#f0f0f0 ctermfg=0   ctermbg=7     gui=bold cterm=bold
hi CursorColumn    guibg=#f0f0f0               ctermbg=7
hi ColorColumn     guibg=#eeeeee               ctermbg=7
hi SignColumn      guifg=#aaaaaa guibg=#ffffff ctermfg=7   ctermbg=15
hi FoldColumn      guifg=#aaaaaa guibg=#ffffff ctermfg=7   ctermbg=15
hi Folded          guifg=#888888 guibg=#eeeeee ctermfg=8   ctermbg=7     gui=italic cterm=italic
hi VertSplit       guifg=#000000 guibg=#ffffff ctermfg=0   ctermbg=15
hi StatusLine      guifg=#ffffff guibg=#000000 ctermfg=15  ctermbg=0     gui=bold  cterm=bold
hi StatusLineNC    guifg=#ffffff guibg=#888888 ctermfg=15  ctermbg=8
hi TabLine         guifg=#000000 guibg=#cccccc ctermfg=0   ctermbg=7
hi TabLineFill     guifg=#000000 guibg=#cccccc ctermfg=0   ctermbg=7
hi TabLineSel      guifg=#ffffff guibg=#000000 ctermfg=15  ctermbg=0     gui=bold  cterm=bold

" Selection & search
hi Visual          guifg=#000000 guibg=#cccccc ctermfg=0   ctermbg=7
hi Search          guifg=#ffffff guibg=#555555 ctermfg=15  ctermbg=8
hi IncSearch       guifg=#ffffff guibg=#000000 ctermfg=15  ctermbg=0     gui=bold  cterm=bold
hi MatchParen      guifg=#000000 guibg=#bbbbbb ctermfg=0   ctermbg=7     gui=bold  cterm=bold

" Popup menu
hi Pmenu           guifg=#000000 guibg=#eeeeee ctermfg=0   ctermbg=7
hi PmenuSel        guifg=#ffffff guibg=#555555 ctermfg=15  ctermbg=8
hi PmenuSbar       guibg=#cccccc               ctermbg=7
hi PmenuThumb      guibg=#888888               ctermbg=8

" Messages & misc
hi Title           guifg=#000000               ctermfg=0   gui=bold      cterm=bold
hi Directory       guifg=#000000               ctermfg=0   gui=bold      cterm=bold
hi WarningMsg      guifg=#000000 guibg=#eeeeee ctermfg=0   ctermbg=7     gui=bold  cterm=bold
hi ErrorMsg        guifg=#ffffff guibg=#444444 ctermfg=15  ctermbg=8     gui=bold  cterm=bold
hi ModeMsg         guifg=#000000               ctermfg=0   gui=bold      cterm=bold
hi MoreMsg         guifg=#000000               ctermfg=0   gui=bold      cterm=bold
hi Question        guifg=#000000               ctermfg=0   gui=bold      cterm=bold
hi WildMenu        guifg=#ffffff guibg=#000000 ctermfg=15  ctermbg=0     gui=bold  cterm=bold
hi Conceal         guifg=#888888 guibg=#ffffff ctermfg=8   ctermbg=15
hi SpellBad        guifg=#000000               ctermfg=0   gui=undercurl cterm=underline
hi SpellCap        guifg=#000000               ctermfg=0   gui=undercurl cterm=underline
hi DiffAdd         guifg=#000000 guibg=#dddddd ctermfg=0   ctermbg=7
hi DiffDelete      guifg=#888888 guibg=#eeeeee ctermfg=8   ctermbg=7
hi DiffChange      guifg=#000000 guibg=#eeeeee ctermfg=0   ctermbg=7
hi DiffText        guifg=#000000 guibg=#cccccc ctermfg=0   ctermbg=7     gui=bold  cterm=bold
