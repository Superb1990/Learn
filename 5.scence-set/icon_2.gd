extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#本地坐标与世界坐标的 转换
	print('icon2:',position)
	print('icon2 global:',global_position)
	print('icon2 convertGlobal',to_global(position))
	print('icon2 convertLocal ',to_local(global_position))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
