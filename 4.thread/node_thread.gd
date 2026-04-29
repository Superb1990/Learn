extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
func testThread():
	print('thread method is run...')
	return 100
	pass

func _on_button_button_down() -> void:
	#初始化线程
	var thread=Thread.new()
	print('current thread is : ',thread)
	#查看此线程是否活跃
	print('current thread status:',thread.is_alive())
	#启动线程，并制定该线程执行的方法（函数）
	thread.start(Callable(self,"testThread"))
	print('current thread status:',thread.is_alive())
	#等待线程返回结果
	var result= thread.wait_to_finish()
	print('current thread result:',result)
	print('current thread status:',thread.is_alive())
	pass # Replace with function body.
