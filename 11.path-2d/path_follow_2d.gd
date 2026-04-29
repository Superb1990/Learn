extends PathFollow2D

var totlecount
var skip=10
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	progress+=1
	totlecount=(self.get_parent() as Path2D).curve.get_baked_length()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#让物体  折返 运动
	print(progress)
	#从左到右
	if progress>0&&progress<totlecount&&skip>0:
		if progress+skip>=totlecount:
			progress=totlecount
		else:
			progress+=skip
	#到达右侧终点
	elif progress==totlecount:
		skip=-skip
		progress+=skip
	#到达起点
	elif progress==0:
		skip=-skip
		progress+=skip
	#从右往左
	elif progress>0&&progress<totlecount:
		if progress+skip<=0:
			progress=0
		else:
			progress+=skip
	else:
		pass
	  
	
