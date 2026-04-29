extends CharacterBody2D


@export var speed:=50
var player_node:CharacterBody2D
@onready var navigation_agent_2d:NavigationAgent2D= $Navigation/NavigationAgent2D

func _ready() -> void:
	player_node=get_node("/root/"+get_tree().current_scene.name+"/PlayerNode/Player")
	pass

func _physics_process(delta: float) -> void:
	var direction=to_local(navigation_agent_2d.get_next_path_position()).normalized()
	navigation_agent_2d.set_velocity(direction*speed)
	#navigation_agent_2d.set_velocity_forced(direction*speed)
	#velocity=direction*speed
	#move_and_slide()
	#pass

func _on_timer_timeout() -> void:
	#print(player_node.position)
	navigation_agent_2d.target_position=player_node.global_position
	pass # Replace with function body.


func _on_navigation_agent_2d_velocity_computed(safe_velocity: Vector2) -> void:
	velocity=safe_velocity
	move_and_slide()
	pass # Replace with function body.
