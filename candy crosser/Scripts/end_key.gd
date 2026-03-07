extends Area2D

signal hit
@onready var time = $Timer
@onready var anim_player = $AudioStreamPlayer2D

func _on_body_entered(body: Node2D) -> void:
	anim_player.play()
	time.start()
	get_tree().call_deferred("change_scene_to_file", "res://Scenes/credits.tscn")
	
