-- Features to build (or ensure are built) on start-up

-- Add "shell_scipts to path"
--vim.cmd(":let $PATH='$PATH:~/.config/nvim/lua/vidarmarsh/shell_scripts'")

-- Configure clipboard to work in WSL
in_wsl = os.getenv('WSL_DISTRO_NAME') ~= nil

if in_wsl then
    -- Ensure "nvim_paste" has execute privilege
    os.execute("chmod 777 ~/.config/nvim/lua/vidarmarsh/shell_scripts/nvim_paste")
	vim.g.clipboard = {
		name = 'WslClipboard',
		copy = { 
			['+'] = { 'clip.exe' }, 
			['*'] = { 'clip.exe' } 
		},
		paste = { 
			['+'] = { 'sh ~/.config/nvim/lua/vidarmarsh/shell_scripts/nvim_paste' },
			['*'] = { 'sh ~/.config/nvim/lua/vidarmarsh/shell_scripts/nvim_paste' },
		},
		cache_enabled = true,
	}
end
