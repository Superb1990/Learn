extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#向量
	var v1=Vector2(3,4)
	#计算向量长度
	print('current vector lenth is :',v1.length())
	#计算单位向量
	print('current vector danwei is :',v1.normalized())
	print('current vector lenth is :',v1.length())
	
	#向量几种标准化  形式    上下左右的 向量表示
	print('up is :',Vector2.UP)
	
	
	#向量的计算  加减乘除
	#加法
	var v2=Vector2(5,7)
	print('v1:'+str(v1)+  '  v2:'+str(v2))
	print('Vector add is :',v1+v2)
	
	#减法
	print('v1:'+str(v1)+  '  v2:'+str(v2))
	print('Vector cut is :',v2-v1)
	
	#乘法
	print('标量的乘法：',v1*v2)
	print('点积：',v1.dot(v2))
	print('差积: ',v1.cross(v2))
	
	#求夹角
	print("夹角：",v1.angle_to(v2))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
