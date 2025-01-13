local ascii = {}
ascii.BlockInlay = {
	"▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄",
	"█▄▄ ▄▄█ ████ ▄▄███▀▄▄▀█ ▄▄▀█ ▄▄███▄▄ ▄▄██ ▄▄▀██ ██ ██ ▄▄▄███ ▄▄█ ▄▀██▄██▄ ▄█▀▄▄▀█ ▄▄▀█",
	"███ ███ ▄▄ █ ▄▄███ ██ █ ██ █ ▄▄█████ ████ ▀▀▄██ ██ ██ ▄▄▄███ ▄▄█ █ ██ ▄██ ██ ██ █ ▀▀▄█",
	"███ ███▄██▄█▄▄▄████▄▄██▄██▄█▄▄▄█████ ████ ██ ██▄▀▀▄██ ▀▀▀███▄▄▄█▄▄██▄▄▄██▄███▄▄██▄█▄▄█",
	"▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀",
}
ascii.Tmplr = {
	"┏┳┓┓             ┏┳┓┳┓┳┳┏┓     ┓•     ",
	" ┃ ┣┓┏┓  ┏┓┏┓┏┓   ┃ ┣┫┃┃┣   ┏┓┏┫┓╋┏┓┏┓",
	" ┻ ┛┗┗   ┗┛┛┗┗    ┻ ┛┗┗┛┗┛  ┗ ┗┻┗┗┗┛┛ ",
}

return {
	{
		"nvimdev/dashboard-nvim",
		enabled = true,
		lazy = true,
		event = "VimEnter",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			theme = "hyper",
			disable_move = true,
			shortcut_type = "number",
      theme_custom = {},
      config = {
        header = ascii.BlockInlay,
			},
		},
	}
}

