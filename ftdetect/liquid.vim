" Liquid
au BufNewFile,BufRead *.liquid					set ft=liquid

au BufNewFile,BufRead */_layouts/*.html,*/_includes/*.html	set ft=liquid
au BufNewFile,BufRead *.html,*.textile
      \ if getline(1) == '---' | set ft=liquid | endif
au BufNewFile,BufRead *.xml
      \ if getline(1) == '---' | set ft=liquid.xml | endif
au BufNewFile,BufRead *.markdown,*.mkd,*.mkdn,*.md
      \ if getline(1) == '---' |
      \   let b:liquid_subtype = 'markdown' |
      \   set ft=liquid.markdown |
      \ endif

" Set subtype for Shopify alternate templates
au BufNewFile,BufRead */templates/**.liquid,*/layout/**.liquid,*/snippets/**.liquid
      \ let b:liquid_subtype = 'html' |
      \ set ft=liquid |
