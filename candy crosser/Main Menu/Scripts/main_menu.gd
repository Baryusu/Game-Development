extends Node2D

@onready var click = $click
func _on_start_pressed() -> void:
	click.play()
	get_tree().change_scene_to_file("res://Scenes/tutorial.tscn")


func _on_options_pressed() -> void:
	click.play()
	get_tree().change_scene_to_file("res://Main Menu/Scenes/options.tscn")


func _on_exit_pressed() -> void:
	click.play()
	get_tree().quit()
