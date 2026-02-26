extends Area2D

signal hit

func _on_body_entered(body: Node2D) -> void:
	get_tree().call_deferred("change_scene_to_file", "res://Scenes/ending.tscn")
	
