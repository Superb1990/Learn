extends Node2D

var count=0
signal  HelloSignal(a:int,b:String)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$btn1_start.connect("pressed",Callable(self,"start1"))
	$btn2_emit.connect("pressed",Callable(self,"commit"))
	pass # Replace with function body.


func start1():
	print("_________________start______________________")
	var result=await wait_comiit()
	print("__________________await_____________________")
	print(result)
	print("__________________result_____________________")
	pass

func wait_comiit():
	print("waitting . ",count)
	var mySignal=await  self.HelloSignal
	print("user commit . ",mySignal)
	return mySignal[0]
	
func commit():
	count+=1
	print("commit signal ",count)
	self.emit_signal("HelloSignal",count,"i say ni hao!")
	pass
