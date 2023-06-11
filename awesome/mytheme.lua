-- Define colors
local mycolorscheme = {
	background = "#282c34",
	foreground = "#abb2bf",
	black = "#282c34",
	red = "#e06c75",
	green = "#98c379",
	yellow = "#e5c07b",
	blue = "#61afef",
	magenta = "#c678dd",
	cyan = "#56b6c2",
	white = "#abb2bf",
	gray = "#5c6370",
}

-- Apply colors to theme
local theme = {}

theme.bg_normal = mycolorscheme.background
theme.fg_normal = mycolorscheme.foreground
theme.bg_focus = mycolorscheme.background
theme.fg_focus = mycolorscheme.blue
theme.bg_urgent = mycolorscheme.background
theme.fg_urgent = mycolorscheme.red
theme.border_width = 2
theme.border_normal = mycolorscheme.gray
theme.border_focus = mycolorscheme.blue
theme.border_marked = mycolorscheme.red
theme.taglist_bg_focus = mycolorscheme.blue
theme.tasklist_bg_focus = mycolorscheme.background
theme.titlebar_bg_normal = mycolorscheme.background
theme.titlebar_bg_focus = mycolorscheme.background
theme.titlebar_fg_normal = mycolorscheme.foreground
theme.titlebar_fg_focus = mycolorscheme.blue

-- Apply theme
return theme
