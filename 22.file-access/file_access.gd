extends Node2D

var filePath="1.txt"
var label1:Label
var readFileEdit:TextEdit
var writeFilePathEdit:TextEdit
var writeFileTextEdit:TextEdit
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	label1=get_node("读取文件显示区")
	readFileEdit=get_node("读取文件名输入框")
	writeFilePathEdit=get_node("写入文件名输入框")
	writeFileTextEdit=get_node("获取用户输入框")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#文件读取
func _on_button_button_down() -> void:
	if readFileEdit&&!readFileEdit.text.is_empty():
		filePath=readFileEdit.text
	else :
		print("文件不存在已使用默认文件",filePath)
		
	if  FileAccess.file_exists(filePath):
		print("文件存在",filePath)
		var file=FileAccess.open(filePath,FileAccess.READ)
		if file:
			var content=file.get_as_text()
			label1.text=content
			file.close()
	else :
		print("文件不存在",filePath)
	pass # Replace with function body.

#文件写入
func _on_writefile_button_down() -> void:
	
	if writeFilePathEdit&&!writeFilePathEdit.text.is_empty():
		var writeName=writeFilePathEdit.text
		if writeFileTextEdit&&!writeFileTextEdit.text.is_empty():
			var file=FileAccess.open(writeName,FileAccess.WRITE)
			if file:
				file.store_string(writeFileTextEdit.text)
				print("写入成功！")
			file.close()
		else :
			print("输入内容不能为空！")
	else :
		print("文件地址不能为空")

	pass # Replace with function body.
