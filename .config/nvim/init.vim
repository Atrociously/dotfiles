let s:config_files = [
      \ 'settings.vim',
      \ 'plugins.vim',
      \ 'lsp.vim',
      \ 'autopair.vim',
      \ 'treesitter.vim',
      \ 'nvimtree.vim',
      \ 'trouble.vim',
      \ 'lualine.vim',
      \ 'comment.vim',
      \ 'colors.vim',
      \ ]

for s:fname in s:config_files
  execute printf("source %s/settings/%s", stdpath('config'), s:fname)
endfor
