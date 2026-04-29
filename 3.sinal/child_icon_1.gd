extends Sprite2D

var a=0
var b=0
#自定义信号
signal  mySignal(a,b)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#发送信号  类似与 通信的 UDP
func _on_button_button_down() -> void:
	#发送广播（信号）  不用知道 谁接受  解耦
	a+=10
	b+=20
	emit_signal("mySignal",a,b)
	pass # Replace with function body.
