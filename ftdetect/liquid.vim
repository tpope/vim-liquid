" Liquid
au BufNewFile,BufRead *.liquid			set ft=liquid

au BufNewFile,BufRead */_layouts/*.html		set ft=liquid
au BufNewFile,BufRead *.html,*.xml,*.markdown,*.textile
      \ if getline(1) == '---' | set ft=liquid | endif

autocmd BufNewFile,BufRead *.md
      \ if getline(1) == '---' |
      \   let b:liquid_subtype = 'markdown' |
      \   set ft=liquid |
      \ endif
