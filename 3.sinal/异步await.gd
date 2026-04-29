extends Node2D

var i =1 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if i%60==0:
		print('current i :'+str(i))
	i+=1
	pass

#测试 await 
func walk_to_home():
	print("timer start")
	var timer=get_tree().create_timer(3.0)
	await  timer.timeout
	print("i am walking to home")
	print("timer end")
	pass


func _on_button_button_down() -> void:
	walk_to_home()
	pass # Replace with function body.
