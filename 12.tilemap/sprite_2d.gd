extends CharacterBody2D

var speed=150
var viewScreen
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	viewScreen=get_viewport_rect().size
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
	#position+=player*delta
	move_and_collide(player*delta)
	pass
