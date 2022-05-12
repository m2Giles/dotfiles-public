vim.g.slime_target = "tmux"
vim.g.slime_paste_file = "$HOME/.cache/slime_paste"
vim.g.slime_python_ipython = 1
vim.cmd[[let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.2"}]]
