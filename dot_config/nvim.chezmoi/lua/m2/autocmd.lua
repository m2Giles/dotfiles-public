vim.cmd [[autocmd InsertEnter * norm zz ]]
vim.cmd[[
autocmd BufWritePre <buffer> lua require('lint').try_lint()
autocmd BufWritePre * let currPos = getpos(".")
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e
autocmd BufWritePre *.[ch] %s/\%$/\r/e
autocmd BufWritePre * cal cursor(currPos[1], currPos[2]) ]]
