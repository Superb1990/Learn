extends Node2D

var meuBtn:MenuButton
var popup:PopupMenu
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	#设置 checkbox为单选框  当需要多个 checkbox时
	var btnGroup=ButtonGroup.new()
	var cb1=get_node("CheckBox1") as CheckBox
	var cb2=get_node("CheckBox2") as CheckBox
	cb1.button_group=btnGroup
	cb2.button_group=btnGroup
	cb1.button_pressed=true
	
	#menubutton
	meuBtn=get_node("MenuButton")
	popup=meuBtn.get_popup()
	popup.id_pressed.connect(on_menu_selected)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_check_box_toggled(toggled_on: bool) -> void:
	if toggled_on==true:
		print("打开背景音乐")
	else :
		print("关闭背景音乐")
	pass # Replace with function body.


func _on_check_button_toggled(toggled_on: bool) -> void:
	if toggled_on==true:
		print("打开HDR")
	else :
		print("关闭HDR")
	pass # Replace with function body.


func _on_color_picker_button_color_changed(color: Color) -> void:
	print("当前选择颜色",color)
	pass # Replace with function body.

func on_menu_selected(id):
	print("当前选择index",id)
	var currentItem=popup.get_item_text(id)
	print("当前选择",currentItem)


func _on_option_button_item_selected(index: int) -> void:
	var optBtn=get_node("OptionButton") as OptionButton
	var optPop=optBtn.get_popup()
	print("opt选择：",optPop.get_item_text(index))
	pass # Replace with function body.
