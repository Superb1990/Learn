extends Node2D

var camera1:Camera2D
var camera2:Camera2D
var camera3:Camera2D
var camera4:Camera2D
var cameraPlayer:Camera2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	camera1=get_node("Camera2D")
	camera2=get_node("Camera2D2")
	camera3=get_node("Camera2D3")
	camera4=get_node("Camera2D4")
	cameraPlayer=get_node("CharacterBody2D/CameraPlayer")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_key_pressed(KEY_A):
		camera1.make_current()
		print("切换到1相机")
	if Input.is_key_pressed(KEY_D):
		camera2.make_current()
		print("切换到2相机")
	if Input.is_key_pressed(KEY_W):
		camera3.make_current()
		print("切换到3相机")
	if Input.is_key_pressed(KEY_S):
		camera4.make_current()
		print("切换到4相机")
	if (Input.is_key_pressed(KEY_LEFT)||Input.is_key_pressed(KEY_RIGHT)||Input.is_key_pressed(KEY_UP)||Input.is_key_pressed(KEY_DOWN))&&!cameraPlayer.is_current():
		cameraPlayer.make_current()
		print("切换到玩家相机")
		pass
	#if Input.is_action_pressed("ui_left"):
		#camera1.make_current()
	#if Input.is_action_pressed("ui_right"):
		#camera2.make_current()
	#if Input.is_action_pressed("ui_up"):
		#camera3.make_current()
	#if Input.is_action_pressed("ui_down"):
		#camera4.make_current()
	pass
