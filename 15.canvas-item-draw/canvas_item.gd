extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	pass
	
func _draw() -> void:
	#绘制 线
	draw_line(Vector2(100,100),Vector2(200,200),Color.GREEN)
	#绘制  圆
	draw_circle(Vector2(200,200),20,Color.RED)
	#绘制  矩形
	draw_rect(Rect2(300,300,200,200),Color.GREEN_YELLOW,false)
	#绘制 三角形
	var arry=[Vector2(350,350),Vector2(400,400),Vector2(450,350),Vector2(350,350)]
	draw_polyline(arry,Color.GREEN_YELLOW)
	#绘制椭圆
	draw_ellipse(Vector2(500,200),100,50,Color.YELLOW,false)
	#绘制  多显色线段
	#var colorLineArry=[Vector2(300,200),Vector2(300,300),Vector2(350,400)]
	#var colors=[Color.WHITE_SMOKE,Color.AQUA,Color.YELLOW]
	#draw_multiline_colors(colorLineArry,colors,5,true)
	

	pass
