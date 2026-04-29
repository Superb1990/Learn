extends Node

#已预加载实现伪单例
var Scroll:float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Scroll=0
	pass # Replace with function body.

func printScroll():
	print(Scroll)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
