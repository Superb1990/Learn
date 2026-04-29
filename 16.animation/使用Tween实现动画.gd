extends Sprite2D

var tween:Tween
var oriPostion:Vector2
var endPostion:Vector2

#物体不发生复杂变换，只是简单的位置、角度、缩放、旋转和透明度变化时，使用该方式 实现动画更适合

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	tween=create_tween()
	tween.set_loops()
	oriPostion=position
	endPostion=position+Vector2(300,0)
	tween.tween_property(self,"position",endPostion,1)
	tween.tween_property(self,"position",oriPostion,1)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
