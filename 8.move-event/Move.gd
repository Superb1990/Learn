extends Sprite2D

var speed=500
var screen_view
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#获取屏幕矩形数据  rect 包含了 矩形的原点信息 position(x,y)  和 矩形的 宽和 高   Size(w,h)
	var temp=get_viewport_rect()
	#获取屏幕 宽 和 高
	screen_view=get_viewport_rect().size
	print(screen_view)
	#print(delta)
	pass # Replace with function body.

var a=1
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#将用户输入的 向量 初始化
	var userMove=Vector2.ZERO
	#判断用户输入的 方向
	if Input.is_action_pressed("ui_left"):
		userMove.x-=1
	if Input.is_action_pressed("ui_right"):
		userMove.x+=1
	if Input.is_action_pressed("ui_up"):
		userMove.y-=1
	if Input.is_action_pressed("ui_down"):
		userMove.y+=1
	#如果未输入，则不做处理
	if userMove.length()<=0:
		return
	#移动距离  即为  方向（单位向量）*速度
	var userMoveVector=userMove.normalized()*speed
	#为了适应不同屏幕刷新率，保证在各种设备 每帧 物体运动距离相同而做处理
	position+=userMoveVector*delta
	#clamp是限制边界   防止 当前目标 跑出 屏幕
	position.x=clamp(0,position.x,screen_view.x)
	position.y=clamp(0,position.y,screen_view.y)
	pass
