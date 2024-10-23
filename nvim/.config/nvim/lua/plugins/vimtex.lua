return {
     'lervag/vimtex',
     config = function()
         vim.g.tex_flavor = 'latex'
         vim.g.vimtex_complete_enabled=1 -- enable omni-completion
         vim.g.vimtex_complete_close_braces=1 -- adds closing braces to omni-completion
         vim.g.vimtex_format_enabled=1
         vim.g.vimtex_view_method = 'zathura'
         vim.g.vimtex_context_pdf_viewer='zathura'
         vim.g.vimtex_quickfix_open_on_warning=0
         vim.g.tex_conceal='abdmgs'
         vim.g.vimtex_compiler_latexmk = { out_dir='', callback=1, continuous=1, executable='latexmk', hooks={}, options={ '-verbose', '-file-line-error', '-synctex=1', '-interaction=nonstopmode', '-shell-escape', [[--extra-mem-top=100300000]] } }
     end
 }
