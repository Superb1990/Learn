extends Sprite2D

signal mySignal(a,b)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(self.name+ " parent is "+get_parent().name)
	print(self.name+" owner is "+owner.name)
	#按钮绑定事件
	#$Button.connect("pressed",Callable(self,"buttonpress"))
	#self.connect("mySignal",Callable(self,"commitSinal"))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
func commitSinal():
	emit_signal("mySignal",10,20)
	
	pass

func buttonpress():
	print("you press button now")
	pass


func _on_button_button_down() -> void:
	#print("you press button now with sys signal")
	
	pass # Replace with function body.


func _on_button_2_button_down() -> void:
	commitSinal()
	pass # Replace with function body.
