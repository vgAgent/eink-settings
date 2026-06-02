set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "eink-light"

" Gray scale used (light bg, dark text):
"   #000000  pure black    — keywords, operators, normal text
"   #1a1a1a  near black    — function names
"   #333333  dark gray     — types, class names
"   #555555  medium gray   — strings, numbers, constants
"   #777777  mid-light     — preprocessor, special
"   #999999  light gray    — comments (clearly muted)
"   #cccccc  very light    — line numbers, non-text chrome

" Core
hi Normal          guifg=#000000 guibg=#ffffff ctermfg=0   ctermbg=15
hi NonText         guifg=#cccccc guibg=#ffffff ctermfg=7   ctermbg=15
hi SpecialKey      guifg=#cccccc               ctermfg=7
hi EndOfBuffer     guifg=#cccccc guibg=#ffffff ctermfg=7   ctermbg=15

" Syntax — bold/italic/bg for max differentiation, not just gray levels
hi Comment         guifg=#aaaaaa                             ctermfg=8   gui=italic           cterm=italic
hi String          guifg=#555555 guibg=#f0f0f0               ctermfg=8   gui=italic           cterm=italic
hi Character       guifg=#555555 guibg=#f0f0f0               ctermfg=8   gui=italic           cterm=italic
hi Number          guifg=#444444                             ctermfg=0   gui=bold             cterm=bold
hi Float           guifg=#444444                             ctermfg=0   gui=bold             cterm=bold
hi Boolean         guifg=#000000                             ctermfg=0   gui=bold,underline   cterm=bold,underline
hi Constant        guifg=#555555 guibg=#f0f0f0               ctermfg=8   gui=italic           cterm=italic
hi Identifier      guifg=#000000                             ctermfg=0
hi Function        guifg=#000000                             ctermfg=0   gui=bold,italic      cterm=bold,italic
hi Statement       guifg=#000000                             ctermfg=0   gui=bold             cterm=bold
hi Keyword         guifg=#000000                             ctermfg=0   gui=bold             cterm=bold
hi Conditional     guifg=#000000                             ctermfg=0   gui=bold             cterm=bold
hi Repeat          guifg=#000000                             ctermfg=0   gui=bold             cterm=bold
hi Exception       guifg=#000000                             ctermfg=0   gui=bold             cterm=bold
hi Operator        guifg=#000000                             ctermfg=0
hi PreProc         guifg=#666666                             ctermfg=8   gui=italic           cterm=italic
hi Include         guifg=#666666                             ctermfg=8   gui=italic           cterm=italic
hi Define          guifg=#666666                             ctermfg=8   gui=italic           cterm=italic
hi Macro           guifg=#666666                             ctermfg=8   gui=italic           cterm=italic
hi Type            guifg=#333333                             ctermfg=0   gui=bold,underline   cterm=bold,underline
hi StorageClass    guifg=#333333                             ctermfg=0   gui=bold,underline   cterm=bold,underline
hi Structure       guifg=#333333               ctermfg=0   gui=bold      cterm=bold
hi Typedef         guifg=#333333               ctermfg=0   gui=bold      cterm=bold
hi Special         guifg=#777777               ctermfg=8
hi SpecialChar     guifg=#555555               ctermfg=8
hi Delimiter       guifg=#000000               ctermfg=0
hi Tag             guifg=#333333               ctermfg=0
hi Underlined      guifg=#000000               ctermfg=0   gui=underline cterm=underline
hi Error           guifg=#000000 guibg=#dddddd ctermfg=0   ctermbg=7     gui=bold cterm=bold
hi Todo            guifg=#000000 guibg=#cccccc ctermfg=0   ctermbg=7     gui=bold cterm=bold

" Editor chrome
hi LineNr          guifg=#cccccc guibg=#ffffff ctermfg=7   ctermbg=15
hi CursorLine      guifg=NONE    guibg=#f0f0f0             ctermbg=7     cterm=none gui=none
hi CursorLineNr    guifg=#555555 guibg=#f0f0f0 ctermfg=8   ctermbg=7     gui=bold  cterm=bold
hi CursorColumn    guibg=#f0f0f0               ctermbg=7
hi ColorColumn     guibg=#eeeeee               ctermbg=7
hi SignColumn      guifg=#cccccc guibg=#ffffff ctermfg=7   ctermbg=15
hi FoldColumn      guifg=#cccccc guibg=#ffffff ctermfg=7   ctermbg=15
hi Folded          guifg=#999999 guibg=#eeeeee ctermfg=8   ctermbg=7     gui=italic cterm=italic
hi VertSplit       guifg=#cccccc guibg=#ffffff ctermfg=7   ctermbg=15
hi StatusLine      guifg=#ffffff guibg=#000000 ctermfg=15  ctermbg=0     gui=bold  cterm=bold
hi StatusLineNC    guifg=#ffffff guibg=#999999 ctermfg=15  ctermbg=8
hi TabLine         guifg=#555555 guibg=#eeeeee ctermfg=8   ctermbg=7
hi TabLineFill     guifg=#555555 guibg=#eeeeee ctermfg=8   ctermbg=7
hi TabLineSel      guifg=#ffffff guibg=#000000 ctermfg=15  ctermbg=0     gui=bold  cterm=bold

" Selection & search
hi Visual          guifg=#000000 guibg=#dddddd ctermfg=0   ctermbg=7
hi Search          guifg=#ffffff guibg=#555555 ctermfg=15  ctermbg=8
hi IncSearch       guifg=#ffffff guibg=#000000 ctermfg=15  ctermbg=0     gui=bold  cterm=bold
hi MatchParen      guifg=#000000 guibg=#cccccc ctermfg=0   ctermbg=7     gui=bold  cterm=bold

" Popup menu
hi Pmenu           guifg=#000000 guibg=#eeeeee ctermfg=0   ctermbg=7
hi PmenuSel        guifg=#ffffff guibg=#555555 ctermfg=15  ctermbg=8
hi PmenuSbar       guibg=#dddddd               ctermbg=7
hi PmenuThumb      guibg=#999999               ctermbg=8

" Messages & misc
hi Title           guifg=#000000               ctermfg=0   gui=bold      cterm=bold
hi Directory       guifg=#333333               ctermfg=0   gui=bold      cterm=bold
hi WarningMsg      guifg=#000000 guibg=#eeeeee ctermfg=0   ctermbg=7     gui=bold  cterm=bold
hi ErrorMsg        guifg=#ffffff guibg=#333333 ctermfg=15  ctermbg=8     gui=bold  cterm=bold
hi ModeMsg         guifg=#000000               ctermfg=0   gui=bold      cterm=bold
hi MoreMsg         guifg=#000000               ctermfg=0   gui=bold      cterm=bold
hi Question        guifg=#000000               ctermfg=0   gui=bold      cterm=bold
hi WildMenu        guifg=#ffffff guibg=#000000 ctermfg=15  ctermbg=0     gui=bold  cterm=bold
hi Conceal         guifg=#cccccc guibg=#ffffff ctermfg=7   ctermbg=15
hi SpellBad        guifg=#000000               ctermfg=0   gui=undercurl cterm=underline
hi SpellCap        guifg=#555555               ctermfg=8   gui=undercurl cterm=underline
hi DiffAdd         guifg=#000000 guibg=#e0e0e0 ctermfg=0   ctermbg=7
hi DiffDelete      guifg=#999999 guibg=#f0f0f0 ctermfg=8   ctermbg=7
hi DiffChange      guifg=#000000 guibg=#eeeeee ctermfg=0   ctermbg=7
hi DiffText        guifg=#000000 guibg=#cccccc ctermfg=0   ctermbg=7     gui=bold  cterm=bold
