set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "sushi"

let s:attr = {
    \'italic': 'italic',
    \'bold': 'bold',
    \'underline': 'underline'
  \}

let s:fg = g:sushi#palette.fg
let s:bg = g:sushi#palette.bg

let s:subtle = g:sushi#palette.subtle
let s:bright = g:sushi#palette.bright

let s:cyan = g:sushi#palette.cyan
let s:pink = g:sushi#palette.pink
let s:green = g:sushi#palette.green

let s:none = ['NONE', 'NONE']

" adapted from https://github.com/dracula/vim
function s:h(scope, fg, ...)
  let l:fg = copy(a:fg)
  let l:bg = get(a:, 1, ['NONE', 'NONE'])

  let l:attr_list = filter(get(a:, 2, ['NONE']), 'type(v:val) == 1')
  let l:special = len(l:attr_list) > 0 ? join(l:attr_list, ',') : 'NONE'

  let l:hl_string = [
    \ 'highlight', a:scope,
    \ 'guifg=' . l:fg[0], 'ctermfg=' . l:fg[1],
    \ 'guibg=' . l:bg[0], 'ctermbg=' . l:bg[1],
    \ 'gui=' . l:special, 'cterm=' . l:special,
    \]

  execute join(l:hl_string, ' ')
endfunction

call s:h('Normal', s:fg, s:bg)
call s:h('None', s:none)

call s:h('SushiFg', s:fg)
call s:h('SushiFgItalic', s:fg, s:none, [s:attr.italic])
call s:h('SushiFgBold', s:fg, s:none, [s:attr.bold])
call s:h('SushiBg', s:none, s:bg)

call s:h('SushiSubtle', s:subtle)
call s:h('SushiBright', s:bright)
call s:h('SushiBrightItalic', s:bright, s:none, [s:attr.italic])

call s:h('SushiCyan', s:cyan)
call s:h('SushiPink', s:pink)
call s:h('SushiGreen', s:green)

hi! link NonText SushiSubtle
hi! link SpecialKey SushiSubtle

hi! link Statement SushiBright
hi! link Conditional SushiBright
hi! link Keyword SushiBright
hi! link StorageClass SushiBright
hi! link Repeat SushiBright
hi! link Label SushiBright
hi! link Exception SushiBright

hi! link Identifier SushiFgItalic
hi! link Function SushiFgItalic

hi! link Comment SushiCyan
hi! link SignColumn SushiCyan
hi! link Todo SushiCyan
hi! link LineNr SushiCyan

hi! link Number SushiPink
hi! link Float SushiPink
hi! link Constant SushiPink
hi! link Boolean SushiPink

hi! link Type SushiFgBold

hi! link String SushiGreen

hi! link Underlined SushiFg
hi! link Error SushiFg
hi! link SpellBad SushiFg
hi! link SpellLocal SushiFg
hi! link SpellCap SushiFg
hi! link SpellRare SushiFg
hi! link Character SushiFg
hi! link Operator SushiFg
hi! link PreProc SushiFg
hi! link Include SushiFg
hi! link Define SushiFg
hi! link Macro SushiFg
hi! link PreCondit SushiFg
hi! link Structure SushiFg
hi! link Typedef SushiFg
hi! link Delimiter SushiFg
hi! link Special SushiFg
hi! link SpecialComment SushiFg
hi! link Tag SushiFg
hi! link helpHyperTextJump SushiFg
hi! link helpCommand SushiFg
hi! link helpExample SushiFg
hi! link helpBacktick SushiFg
