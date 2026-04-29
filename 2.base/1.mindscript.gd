extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var a:float=12
	var b=7
	var d=12
	var c=a/b
	
	print(c)
	print(d%b)
	var e=2
	match e:
		1:
			print("match"+str(e))
		2:
			print("match"+str(e))
	var arr=["apple","orgin","banana"]
	var dic={
		"name":"qiancheng",
		"age":"36",
		"order":"1"
	}
	for i in arr:
		print(i)
	for i in dic:
		print(i+":"+dic[i])
	#var node1=get_node("childicon")
	#print("child is :"+$childicon.name)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	loopmethod()
	pass
func loopmethod():
	for i in range(100000):
		pass
