extends Area2D

@onready var timer = $Timer
@onready var anim_player = $AudioStreamPlayer
func _on_body_entered(body: Node2D) -> void:
	print("You died!")
	anim_player.play()
	Engine.time_scale = 0.5
	
	body.get_node("CollisionShape2D").queue_free()
	
	timer.start()


func _on_timer_timeout() -> void:
	anim_player.stop()
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
