" All plugin customizations should be placed here {
"
    " CloseTag {
        au FileType * let b:unaryTagsStack=""
        let g:closetag_html_style=1
    " }

    " DelimitMate {
        au FileType * let b:delimitMate_autoclose = 1

        " If using html auto complete (complete closing tag)
        au FileType xml,html,xhtml let b:delimitMate_matchpairs = "(:),[:],{:}"
    " }

    " FuzzyFinder {
        let g:fuf_modesDisable = [ 'mrucmd' ]
        nmap <C-f> :FufFile<cr>
        nmap <C-b> :FufBuffer<cr>
        nmap <C-t> :FufTag<cr>
        nmap <C-m> :FufMruFile<cr>
        noremap <silent> <C-]> :FufTagWithCursorWord!<CR>
    " }

    " Matchit {
       call FixMatchitPHP()
    " }

    " NerdTree {
        nmap ,nt :NERDTreeToggle<CR>
        let NERDTreeShowHidden=0

        " Autopen NERDTree and focus cursor in new document
        autocmd VimEnter * NERDTree /home/bogdan/www2
        autocmd VimEnter * wincmd p
    " }

    " Netrw plugin - FTP {
        let g:netrw_altv          = 1
        let g:netrw_fastbrowse    = 2
        let g:netrw_keepdir       = 0
        let g:netrw_liststyle     = 2
        let g:netrw_retmap        = 1
        let g:netrw_silent        = 1
        let g:netrw_special_syntax= 1
    " }

    " PDV - php Documentor {
        map ,d :call PhpDocSingle()<CR> 
        vnoremap ,d :call PhpDocRange()<CR>
    " }

    " phpComplete {
        autocmd FileType php set omnifunc=phpcomplete#CompletePHP
    " }

    " PHP syntax { 
        let php_sql_query=1             " Highlight SQL syntax in strings
        let php_noShortTags = 1         " Disable short tags
        let php_folding = 1             " DON'T enable folding for classes and functions
        let PHP_autoformatcomment = 1
        let php_sync_method = -1
    " }
    " Tabularize {        
        vmap <Leader>= :Tabularize /=<CR>
        vmap <Leader>a :Tabularize /:<CR>
        " vmap ,a :Tabularize /:\zs<CR>
    " }

    " Taglist {
        nmap ,t :TlistToggle<CR>
        let tlist_php_settings = 'php;c:class;f:function;d:constant'
        let Tlist_File_Fold_Auto_Close = 1
        " make tlist pane active when opened
        let Tlist_GainFocus_On_ToggleOpen = 1
        " width of window
        let Tlist_WinWidth = 40
        " close tlist when a selection is made
        let Tlist_Close_On_Select = 1
        let Tlist_Process_File_Always = 0
        let Tlist_Show_One_file = 1
        set tags=~/.vim/cake
    " }

    " T-Comment {
        map <leader>c <c-_><c-_>
    " }

    " Zen Coding {
        " Change zen coding plugin expansion key to ctrl + e
        let g:user_zen_expandabbr_key = '<C-e>'
    " }

" }
