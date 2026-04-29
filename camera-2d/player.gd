extends Sprite2D

const SPEED = 200.0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func Move():
	#print("我的位置: ", position)  # 能正确获取
	#print("我的全局位置: ", global_position)
	#移动  上下左右
	var direction= Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	if direction!=Vector2.ZERO:
		velocity=direction*SPEED
		move_and_slide()
	pass
