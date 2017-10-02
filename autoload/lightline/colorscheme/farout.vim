let s:p = {'normal': {}, 'inactive': {}, 'insert': {},
        \ 'replace': {}, 'visual': {}, 'tabline': {}}

let s:has_stl = 0
if exists('&fcs') && &fcs != ""
    let s:fcs_a = split(&fcs, ',')
    for s:opt in s:fcs_a
        let s:item = split(s:opt, ':')
        if s:item[0] == 'stl' && s:item[1] != ""
            let s:has_stl = 1
            break
        endif
    endfor
endif
unlet! s:fcs_a s:opt s:item

let s:p.inactive.left     = [[ '#A4896F', '#291916', 137, 235 ],
                          \  [ '#6B4035', '#291916', 239, 235 ]]
if s:has_stl
  let s:p.inactive.middle = [[ '#6B4035', '#0F0908', 239, 233 ]]
else
  let s:p.inactive.middle = [[ '#6B4035', '#291916', 239, 235 ]]
endif
let s:p.inactive.right    = [[ '#6B4035', '#291916', 239, 235 ]]

let s:p.insert.left       = [[ '#291916', '#F2A766', 234, 215 ],
                          \  [ '#F2DDBC', '#291916', 223, 234 ],
                          \  [ '#8A4B53', '#291916',  95, 234 ],
                          \  [ '#A67458', '#291916', 137, 234 ]]

let s:p.normal.error      = [[ '#BF472C', '#291916', 130, 234 ]]
let s:p.normal.left       = [[ '#F2A766', '#291916', 215, 235 ],
                          \  [ '#F2DDBC', '#291916', 223, 234 ],
                          \  [ '#8A4B53', '#291916',  95, 234 ],
                          \  [ '#A67458', '#291916', 137, 234 ]]
if s:has_stl
  let s:p.normal.middle   = [[ '#6B4035', '#0F0908', 239, 233 ]]
else
  let s:p.normal.middle   = [[ '#6B4035', '#291916', 239, 235 ]]
endif
let s:p.normal.right      = [[ '#A67458', '#291916', 137, 234 ],
                          \  [ '#8A4B53', '#291916',  95, 234 ],
                          \  [ '#D47D49', '#291916', 173, 234 ]]
let s:p.normal.warning    = [[ '#F2A766', '#291916', 215, 234 ]]

let s:p.replace.left      = [[ '#F2DDBC', '#D47D49', 223, 173 ],
                          \  [ '#F2DDBC', '#291916', 223, 234 ],
                          \  [ '#8A4B53', '#291916',  95, 234 ],
                          \  [ '#A67458', '#291916', 137, 234 ]]

let s:p.tabline.left      = [[ '#6B4035', '#291916', 239, 234 ]]
let s:p.tabline.middle    = [[ '#291916', '#291916', 234, 234 ]]
let s:p.tabline.right     = [[ '#6B4035', '#291916', 239, 234 ]]
let s:p.tabline.tabsel    = [[ '#F2A766', '#291916', 215, 234 ]]

let s:p.visual.left       = [[ '#E0CCAE', '#6B4035', 187, 239 ],
                          \  [ '#F2DDBC', '#291916', 223, 234 ],
                          \  [ '#8A4B53', '#291916',  95, 234 ],
                          \  [ '#A67458', '#291916', 137, 234 ]]

unlet! s:has_stl

let g:lightline#colorscheme#farout#palette = s:p
