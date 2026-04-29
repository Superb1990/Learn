extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(self.name+ " parent is "+get_parent().name)
	print(self.name+" owner is "+owner.name)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	pass
