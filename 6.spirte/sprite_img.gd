extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var texture=self.texture;
	var img=texture.get_image()
	print('this texture is :',texture)
	print('this img is  :' ,img)
	print('this offset is :',offset)
	print('current width is :',texture.get_width())
	print('current height is :',texture.get_height())
	print('current scale is :',scale)
	img.shrink_x2()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
