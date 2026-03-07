extends Control
@onready var click = $click
func _on_main_menu_pressed() -> void:
	click.play()
	get_tree().change_scene_to_file("res://Main Menu/Scenes/main_menu.tscn")


func _on_exit_pressed() -> void:
	click.play()
	get_tree().quit()
