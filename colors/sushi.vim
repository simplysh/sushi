set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "sushi"

let s:fg = g:sushi#palette.fg
let s:bg = g:sushi#palette.bg

let s:subtle = g:sushi#palette.subtle
let s:bright = g:sushi#palette.bright

let s:cyan = g:sushi#palette.cyan
let s:pink = g:sushi#palette.pink

let s:none = ['NONE', 'NONE']

" adapted from https://github.com/dracula/vim
function s:h(scope, fg, ...)
  let l:fg = copy(a:fg)
  let l:bg = get(a:, 1, ['NONE', 'NONE'])

  let l:hl_string = [
    \ 'highlight', a:scope,
    \ 'guifg=' . l:fg[0], 'ctermfg=' . l:fg[1],
    \ 'guibg=' . l:bg[0], 'ctermbg=' . l:bg[1],
    \]

  execute join(l:hl_string, ' ')
endfunction

call s:h('Normal', s:fg, s:bg)

call s:h('SushiFg', s:fg)
call s:h('SushiBg', s:none, s:bg)

call s:h('SushiSubtle', s:subtle)
call s:h('SushiBright', s:bright)

call s:h('SushiCyan', s:cyan)
call s:h('SushiPink', s:pink)

hi! link NonText SushiSubtle
hi! link SpecialKey SushiSubtle

hi! link Statement SushiBright
hi! link Conditional SushiBright
hi! link Keyword SushiBright

hi! link Comment SushiCyan
hi! link SignColumn SushiCyan
hi! link Todo SushiCyan
hi! link LineNr SushiCyan

hi! link Number SushiPink
hi! link Boolean SushiPink
hi! link Float SushiPink

hi! link Underlined SushiFg
hi! link Error SushiFg
hi! link SpellBad SushiFg
hi! link SpellLocal SushiFg
hi! link SpellCap SushiFg
hi! link SpellRare SushiFg
hi! link Constant SushiFg
hi! link String SushiFg
hi! link Character SushiFg
hi! link Identifier SushiFg
hi! link Function SushiFg
hi! link Repeat SushiFg
hi! link Label SushiFg
hi! link Operator SushiFg
hi! link Exception SushiFg
hi! link PreProc SushiFg
hi! link Include SushiFg
hi! link Define SushiFg
hi! link Macro SushiFg
hi! link PreCondit SushiFg
hi! link StorageClass SushiFg
hi! link Structure SushiFg
hi! link Typedef SushiFg
hi! link Type SushiFg
hi! link Delimiter SushiFg
hi! link Special SushiFg
hi! link SpecialComment SushiFg
hi! link Tag SushiFg
hi! link helpHyperTextJump SushiFg
hi! link helpCommand SushiFg
hi! link helpExample SushiFg
hi! link helpBacktick SushiFg
