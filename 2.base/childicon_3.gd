extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var child2=get_parent().find_child("childicon2")
	child2.connect("mySignal",Callable(self,"showSignal"))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func showSignal(a,b):
	print("a :"+str(a) + "  b :"+str(b)+ " a+b= "+str((a+b)))
	pass
