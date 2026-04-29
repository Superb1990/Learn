extends CharacterBody2D
const speed = 300.0 #移动速度
var tempPostion:Vector2
var line2d:Line2D

func _ready() -> void:
	tempPostion=Vector2.ZERO
	#使用line2d辅助标识射线()
	pass

func _process(delta: float) -> void:
	移动()
	pass

func _on_timer_timeout() -> void:
	#判断位置是否改变，如果改变则执行下列代码
	if tempPostion!=global_position:
		print(global_position)
		tempPostion=global_position
		#当前player坐标 (世界)
		var from=tempPostion
		var to=tempPostion+Vector2(100,0)
		print("from:"+str(from)+"  to:"+str(to))
		使用PhysicsServer实现射线的碰撞监测(from,to)
	pass # Replace with function body.
	
func 移动():
	var direction=Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	if direction!=Vector2.ZERO:
		velocity=direction*speed
		move_and_slide()
		pass

func 使用PhysicsServer实现射线的碰撞监测(from:Vector2,to:Vector2)->void:
	#获取当前物理空间可碰撞物的坐标
	var space_state= get_world_2d().direct_space_state
	#射线查询
	var query=PhysicsRayQueryParameters2D.create(from,to)
	#通过当前物理空间碰撞体与 查询射线  判定是否碰撞
	var reuslt=space_state.intersect_ray(query)
	if reuslt:
		print(reuslt.rid)
		pass
	pass

func 使用line2d辅助标识射线():
	line2d=$Line2D
	line2d.closed=true
	line2d.clear_points()
	line2d.add_point(Vector2.ZERO)
	line2d.add_point(Vector2(100,0))
	
#使用默认的 draw方法绘制辅助线
func _draw() -> void:
	draw_line(Vector2.ZERO,Vector2(100,0),Color.RED)
	pass
