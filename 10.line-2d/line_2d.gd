extends Line2D

#var player:Sprite2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#获取 精灵的位置
	var player=get_parent().find_child("Player")
	var postion=player.position
	#将精灵的当前位置添加到 line2d 位置集合中  
	add_point(postion)
	#print('add postion',postion)
	#当集合超过20，移除 索引为0 （最先进入） 的点。  这样可以实现 点的延迟绘制，  拖影、幻影效果
	if(get_point_count()>=20):
		#print('.............remove postion..........',get_point_position(0))
		remove_point(0)
	pass
	

func line2dTest():
	add_point(Vector2(100,100))
	add_point(Vector2(200,100))
	add_point(Vector2(300,200))
