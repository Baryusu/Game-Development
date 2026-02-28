extends Control

@onready var music = $click


func _on_ready_pressed() -> void:
	music.play()
	get_tree().change_scene_to_file("res://Scenes/main.tscn")
