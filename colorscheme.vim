if &t_Co != 256 && ! has("gui_running")
  echomsg ""
  echomsg "Error: Please use GUI or a 256-color terminal (so that t_Co=256 could be set)"
  echomsg ""
  finish
endif

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "color-scheme"

"" General colors

hi Normal       ctermfg=252 guifg=#d0d0d0 ctermbg=234 guibg=#1c1c1c cterm=none gui=none
hi CursorColumn                           ctermbg=238 guibg=#444444
hi Cursor                   guifg=#ffffff ctermbg=214 guibg=#888888
hi CursorLine                             ctermbg=238 guibg=#333333
hi FoldColumn   ctermfg=248 guifg=#a8a8a8 ctermbg=bg  guibg=bg
hi Folded       ctermfg=255 guifg=#eeeeee ctermbg=60  guibg=#5f5f87
hi IncSearch    ctermfg=0   guifg=#000000 ctermbg=223 guibg=#ffdfaf cterm=none gui=none
hi NonText      ctermfg=248 guifg=#a8a8a8                           cterm=bold gui=bold
hi Pmenu        ctermfg=0   guifg=#000000 ctermbg=246 guibg=#949494
hi PmenuSbar                              ctermbg=243 guibg=#767676
hi PmenuSel     ctermfg=0   guifg=#000000 ctermbg=243 guibg=#767676
hi PmenuThumb                             ctermbg=252 guibg=#d0d0d0
hi Search       ctermfg=0   guifg=#000000 ctermbg=149 guibg=#afdf5f
hi SignColumn   ctermfg=248 guifg=#a8a8a8
hi SpecialKey   ctermfg=77  guifg=#5fdf5f
hi StatusLine               guifg=#ffffff ctermbg=239 guibg=#6e6e6e cterm=bold gui=bold
hi StatusLineNC             guifg=#5f5f5f ctermbg=237 guibg=#3a3a3a cterm=none gui=none
hi TabLine      ctermfg=fg  guifg=fg      ctermbg=242 guibg=#666666 cterm=underline gui=underline
hi TabLineFill  ctermfg=fg  guifg=fg      ctermbg=242 guibg=#666666 cterm=underline gui=underline
hi VertSplit    ctermfg=237 guifg=#3a3a3a ctermbg=237 guibg=#3a3a3a cterm=none gui=none
hi Visual       ctermfg=24  guifg=#005f87 ctermbg=153 guibg=#afdfff
hi VIsualNOS    ctermfg=24  guifg=#005f87 ctermbg=153 guibg=#afdfff cterm=none gui=none
hi WildMenu     ctermfg=0   guifg=#000000 ctermbg=184 guibg=#dfdf00 cterm=bold gui=bold
hi Directory    ctermfg=182 guifg=#dfafdf                           cterm=none

hi NERDTreePart      ctermfg=248 guifg=#a8a8a8 ctermbg=bg  guibg=bg  
hi NERDTreeFile      ctermfg=252 guifg=#d0d0d0 ctermbg=234 guibg=#1c1c1c cterm=none gui=none
hi NERDTreeExecFile  ctermfg=182 guifg=#dfafdf 
hi NERDTreeDirSlash  ctermfg=248 guifg=#a8a8a8 ctermbg=bg  guibg=bg
hi NERDTreeClosable  ctermfg=248 guifg=#a8a8a8 ctermbg=bg  guibg=bg
hi NERDTreeToggleOn  ctermfg=248 guifg=#a8a8a8 ctermbg=bg  guibg=bg
hi NERDTreeToggleOff ctermfg=248 guifg=#a8a8a8 ctermbg=bg  guibg=bg
hi NERDTreeDir       ctermfg=110 guifg=#87afdf                           cterm=none
hi NERDTreeUp        ctermfg=150 guifg=#afdf87                           cterm=none
hi NERDTreeCWD       ctermfg=182 guifg=#dfafdf             guibg=#333333 cterm=none
hi NERDTreeLink      ctermfg=182 guifg=#dfafdf                           cterm=none 
hi NERDTreeOpenable  ctermfg=150 guifg=#afdf87                           cterm=none
hi NERDTreeFlag      ctermfg=252 guifg=#ffffff                           cterm=none
hi NERDTreeRO        ctermfg=252 guifg=#ffffff ctermbg=1   guibg=#800000
hi NERDTreeBookmark  ctermfg=150 guifg=#afdf87                           cterm=none
hi NERDTreeCurrentNode ctermfg=252 guifg=#ffffff ctermbg=234 guibg=#1c1c1c cterm=none gui=bold

"" Syntax highlighting

hi Comment      ctermfg=244 guifg=#808080
hi Constant     ctermfg=229 guifg=#ffffaf
hi Error        ctermfg=15  guifg=#ffffff ctermbg=1   guibg=#800000
hi ErrorMsg     ctermfg=15  guifg=#ffffff ctermbg=1   guibg=#800000
hi Identifier   ctermfg=182 guifg=#dfafdf                           cterm=none
hi Ignore       ctermfg=238 guifg=#444444
hi LineNr       ctermfg=248 guifg=#a8a8a8
hi MatchParen   ctermfg=188 guifg=#dfdfdf ctermbg=68  guibg=#5f87df cterm=bold gui=bold
hi Number       ctermfg=180 guifg=#dfaf87
hi PreProc      ctermfg=150 guifg=#afdf87
hi Special      ctermfg=174 guifg=#df8787
hi Statement    ctermfg=110 guifg=#87afdf                           cterm=none gui=none
hi Todo         ctermfg=0   guifg=#000000 ctermbg=184 guibg=#dfdf00
hi Type         ctermfg=146 guifg=#afafdf                           cterm=none gui=none
hi Underlined   ctermfg=39  guifg=#00afff                           cterm=underline gui=underline

"" Special

""" .diff
hi diffAdded    ctermfg=150 guifg=#afdf87
hi diffRemoved  ctermfg=174 guifg=#df8787

""" vimdiff
hi diffAdd      ctermfg=bg  guifg=bg      ctermbg=151 guibg=#afdfaf
"hi diffDelete   ctermfg=bg  guifg=bg      ctermbg=186 guibg=#dfdf87 cterm=none gui=none
hi diffDelete   ctermfg=bg  guifg=bg      ctermbg=246 guibg=#949494 cterm=none gui=none
hi diffChange   ctermfg=bg  guifg=bg      ctermbg=181 guibg=#dfafaf
hi diffText     ctermfg=bg  guifg=bg      ctermbg=174 guibg=#df8787 cterm=none gui=none

" vim: set expandtab tabstop=2 shiftwidth=2 smarttab softtabstop=2: