let g:airline#themes#farout#palette = {}

let s:N1 = ['#F2A766', '#291916', 215, 234]
let s:N2 = ['#A67458', '#291916', 137, 234]
let s:N3 = ['#F2DDBC', '#291916', 223, 234]
let s:N4 = ['#D47D49', '#291916', 173, 234]
let s:N5 = ['#8A4B53', '#291916',  95, 234]
let s:N6 = ['#A67458', '#291916', 137, 234]
let g:airline#themes#farout#palette.normal =
    \ airline#themes#generate_color_map(s:N1, s:N2, s:N3, s:N4, s:N5, s:N6)
let g:airline#themes#farout#palette.normal_modified = {
    \ 'airline_a': [ '#D47D49', '#291916', 173, 234]
    \ }

let s:I1 = ['#291916', '#F2A766', 234, 215]
let s:I2 = ['#A67458', '#291916', 137, 234]
let s:I3 = ['#F2DDBC', '#291916', 223, 234]
let g:airline#themes#farout#palette.insert =
    \ airline#themes#generate_color_map(s:I1, s:I2, s:I3, s:N4, s:N5, s:N6)
let g:airline#themes#farout#palette.insert_paste = {
            \ 'airline_a': ['#291916', '#F2DDBC', 234, 223],
            \ }

let s:R1 = ['#F2DDBC', '#D47D49', 223, 173]
let s:R2 = ['#A67458', '#291916', 137, 234]
let s:R3 = ['#F2DDBC', '#291916', 223, 234]
let g:airline#themes#farout#palette.replace =
    \ airline#themes#generate_color_map(s:R1, s:R2, s:R3, s:N4, s:N5, s:N6)

let s:V1 = ['#E0CCAE', '#6B4035', 187, 239]
let s:V2 = ['#A67458', '#291916', 137, 234]
let s:V3 = ['#F2DDBC', '#291916', 223, 234]
let g:airline#themes#farout#palette.visual =
    \ airline#themes#generate_color_map(s:V1, s:V2, s:V3, s:N4, s:N5, s:N6)


let s:IA1 = ['#A4896F', '#291916',  137, 234, '']
let s:IA2 = ['#6B4035', '#291916',  239, 234, '']
let s:IA3 = ['#6B4035', '#291916',  239, 234, '']
let g:airline#themes#farout#palette.inactive =
  \ airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3, s:IA3, s:IA3, s:IA3)

let g:airline#themes#farout#palette.accents = {
            \ 'red': [ '#BF472C', '', 130, '', 'bold' ]
            \ }

let g:airline#themes#farout#palette.tabline = {
      \ 'airline_tab':     ['#6B4035', '#291916', 239, 234, ''],
      \ 'airline_tabsel':  ['#F2A766', '#291916', 215, 234, ''],
      \ 'airline_tabtype': ['#A4896F', '#291916', 137, 234, ''],
      \ 'airline_tabmod':  ['#D47D49', '#291916', 173, 234, ''],
      \ 'airline_tab_right':     ['#6B4035', '#291916', 239, 234, ''],
      \ 'airline_tabsel_right':  ['#F2A766', '#291916', 215, 234, ''],
      \ 'airline_tabmod_right':  ['#D47D49', '#291916', 173, 234, ''],
      \}

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 = ['#A4896F', '#291916', 137, 234]
let s:CP2 = ['#6B4035', '#291916', 239, 234]
let s:CP3 = ['#E0CCAE', '#291916', 187, 234]
let g:airline#themes#farout#palette.ctrlp =
    \ airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)

