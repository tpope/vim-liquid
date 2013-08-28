" Liquid
au BufNewFile,BufRead *.liquid					set ft=liquid
au BufNewFile,BufRead *.scss.liquid					set ft=scss
au BufNewFile,BufRead *.css.liquid					set ft=css
au BufNewFile,BufRead *.js.liquid					set ft=javascript

au BufNewFile,BufRead */_layouts/*.html,*/_includes/*.html	set ft=liquid
au BufNewFile,BufRead *.html,*.xml,*.textile
      \ if getline(1) == '---' | set ft=liquid | endif
au BufNewFile,BufRead *.markdown,*.mkd,*.mkdn,*.md
      \ if getline(1) == '---' |
      \   let b:liquid_subtype = 'markdown' |
      \   set ft=liquid |
      \ endif
