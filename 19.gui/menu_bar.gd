extends MenuBar



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	setup_menu_bar()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func setup_menu_bar():
	# 1. 文件菜单
	var file_menu = PopupMenu.new()
	file_menu.name = "FileMenu"

	file_menu.add_item("新建", 100)
	file_menu.add_item("打开...", 101)
	file_menu.add_separator()
	file_menu.add_item("保存", 102)
	file_menu.add_item("另存为...", 103)
	file_menu.add_separator()
	file_menu.add_item("页面设置...", 104)
	file_menu.add_item("打印...", 105)
	file_menu.add_separator()
	file_menu.add_item("退出", 106)
	
	# 设置快捷键
	file_menu.set_item_accelerator(0, KEY_N | KEY_MASK_CTRL)
	file_menu.set_item_accelerator(1, KEY_O | KEY_MASK_CTRL)
	file_menu.set_item_accelerator(3, KEY_S | KEY_MASK_CTRL)
	
	# 2. 编辑菜单
	var edit_menu = PopupMenu.new()
	edit_menu.name = "EditMenu"
	
	edit_menu.add_item("撤销", 200, KEY_MASK_CTRL | KEY_Z)
	edit_menu.add_item("重做", 201, KEY_MASK_CTRL | KEY_Y)
	edit_menu.add_separator()
	edit_menu.add_item("剪切", 202, KEY_MASK_CTRL | KEY_X)
	edit_menu.add_item("复制", 203, KEY_MASK_CTRL | KEY_C)
	edit_menu.add_item("粘贴", 204, KEY_MASK_CTRL | KEY_V)
	edit_menu.add_item("删除", 205, KEY_DELETE)
	edit_menu.add_separator()
	edit_menu.add_item("全选", 206, KEY_MASK_CTRL | KEY_A)
	
	# 3. 格式菜单
	var format_menu = PopupMenu.new()
	format_menu.name = "FormatMenu"
	
	format_menu.add_check_item("自动换行", 300)
	format_menu.add_separator()
	format_menu.add_item("字体...", 301)
	format_menu.add_item("颜色...", 302)
	
	# 4. 查看菜单
	var view_menu = PopupMenu.new()
	view_menu.name = "ViewMenu"
	
	# 子菜单 - 缩放
	#var zoom_submenu = PopupMenu.new()
	#zoom_submenu.name = "ZoomSubmenu"
	#zoom_submenu.add_item("放大", 400)
	#zoom_submenu.add_item("缩小", 401)
	#zoom_submenu.add_separator()
	#zoom_submenu.add_item("恢复默认缩放", 402)
	#
	#view_menu.add_submenu_item("缩放", "ZoomSubmenu")
	#view_menu.add_separator()
	#view_menu.add_check_item("状态栏", 403)
	#view_menu.add_check_item("工具栏", 404)
	#view_menu.set_item_checked(view_menu.get_item_index(403), true)
	#view_menu.set_item_checked(view_menu.get_item_index(404), true)
	
