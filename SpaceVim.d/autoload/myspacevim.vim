function! myspacevim#before() abort
  " Make file tree show up on the left
  let g:vimfiler_direction = 'topleft'
  " Change gruvbox color contrast
  let g:gruvbox_contrast_light = 'soft'
  " Make :Gdiff show vertical vimdiffs
  set diffopt+=vertical
  " Specify which files/folders for vimfiler to ignore. Without this all .*
  " files are hidden
  let g:vimfiler_ignore_pattern = '^\%(\.git\|\.DS_Store\)$'
  " Colored column to make 80th column
  set colorcolumn=80
  nnoremap S s
endfunction

function! myspacevim#after() abort
  " Tell SPC b f to use black or autopep8 to format python
  let g:neoformat_python_black = {
            \ 'exe': 'black',
            \ 'stdin': 1,
            \ 'args': ['-l 80', '-'],
            \ }
  let g:neoformat_enabled_python = ['black', 'autopep8']
endfunction
