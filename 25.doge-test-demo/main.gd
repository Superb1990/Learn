extends Node2D

@export var mob_scene:PackedScene
var score

func game_over() -> void:
	$ScoreTimer.stop()
	$MobTimer.stop()
	$HUD.show_game_over()
	$Music.stop()
	$DeathSound.play()
	

func new_game() -> void:
	get_tree().call_group(&"mobs",&"queue_free")
	score=0
	$Player.start($StartPosition.position)
	$StartTimer.start()
	$HUD.update_score(score)
	$HUD.show_message("Get Ready")
	$Music.play()




func _on_mob_timer_timeout() -> void:
	var mob=mob_scene.instantiate()
	var mob_spawn_location=$MobPath/MobSpawnLocation
	mob_spawn_location.progress=randi()
	mob.position=mob_spawn_location.position
	var direction=mob_spawn_location.rotation+PI/2
	direction+=randf_range(-PI/4,PI/4)
	mob.roration=direction
	var veloctiy=Vector2(randf_range(150,250),0)
	mob.linear_veloctiy=veloctiy.rotated(direction)
	add_child(mob)

func _on_score_timer_timeout() -> void:
	score+=1
	$HUD.update_score(score)


func _on_start_timer_timeout() -> void:
	$MobTimer.start()
	$ScoreTimer.start()
