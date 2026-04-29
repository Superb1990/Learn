extends CharacterBody2D

var speed=400
var screenView

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screenView=get_viewport_rect().size
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var player=Vector2.ZERO
	
	if Input.is_action_pressed("ui_left"):
		player.x-=1
	if Input.is_action_pressed("ui_right"):
		player.x+=1
	if Input.is_action_pressed("ui_up"):
		player.y-=1
	if Input.is_action_pressed("ui_down"):
		player.y+=1
	if player.length()<=0:
		return
	player=player.normalized()*speed
	
	#处理移动与碰撞
	var info= move_and_collide(player*delta)
	if info!=null:
		print(info.get_collider())
	#position+=player*delta
	
	
	pass
