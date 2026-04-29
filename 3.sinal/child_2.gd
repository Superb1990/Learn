extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#连接信号，获取自定义信号的数据
	var player=get_node("/root/自定义信号/Child1/childIcon1")
	player.connect("mySignal",Callable(self,"GetPlayerDt"))
	pass # Replace with function body.
	
#信号的回调方法
func GetPlayerDt(a,b):
	print("a :"+str(a) + "  b :"+str(b)+ " a+b= "+str((a+b)))
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
