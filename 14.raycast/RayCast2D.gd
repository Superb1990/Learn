extends CharacterBody2D
var speed=200
# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	Move()
	pass
	
func Move():
	var direction=Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	if direction!=Vector2.ZERO:
		velocity=direction*speed
		move_and_slide()
		pass

func _physics_process(delta: float) -> void:
	var raycast=$Sprite2D/RayCast2D
	raycast.target_position=Vector2(100,0)
	if raycast.is_colliding():
		print(raycast.get_collider())
	pass
		
