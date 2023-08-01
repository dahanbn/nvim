" Convert Markdown file to PDF
 command! ToPDF call s:md_to_pdf()

 function! s:md_to_pdf() abort
   " check if pandoc is installed
   if executable('pandoc') != 1
     echoerr "pandoc not found"
     return
   endif

   let l:md_path = expand("%:p")
   let l:pdf_path = fnamemodify(l:md_path, ":r") .. ".pdf"

   let l:header_path = stdpath('config') . '/resources/head.tex'

   let l:cmd = "pandoc --pdf-engine=lualatex --template scrlttr2dh.latex" .
         \ l:md_path . " -o " . l:pdf_path

   if g:is_mac
     let l:cmd = l:cmd . '&& open ' . l:pdf_path
   endif

   if g:is_win
     let l:cmd = l:cmd . '&& start ' . l:pdf_path
   endif

   " echomsg l:cmd

   let l:id = jobstart(l:cmd)

   if l:id == 0 || l:id == -1
     echoerr "Error running command"
   endif
 endfunction
