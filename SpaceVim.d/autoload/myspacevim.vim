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
  " SpaceVim uses s, so we'll just use S instead for replacing a character and
  " entering insert mode
  nnoremap S s
  " Set the autocomplete method as described here:
  " https://spacevim.org/layers/autocomplete/#configuration
  let g:spacevim_custom_plugins = [
        \ ['vim-scripts/gtags.vim'],
        \ ]
  let g:spacevim_disabled_plugins = ['neocomplcache.vim']
  let g:spacevim_autocomplete_method = 'completor'
endfunction

function! myspacevim#after() abort
  " Tell SPC b f to use black or autopep8 to format python
  let g:neoformat_python_black = {
            \ 'exe': 'black',
            \ 'stdin': 1,
            \ 'args': ['-l 80', '-'],
            \ }
  let g:neoformat_enabled_python = ['black', 'autopep8']
  set tags+=./tags,tags;$HOME
endfunction
