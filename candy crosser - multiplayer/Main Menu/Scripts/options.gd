extends Control




func _on_volume_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(1, linear_to_db(value))
	
func _on_sfx_volume_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(2, linear_to_db(value))


func _on_mute_toggled(toggled_on: bool) -> void:
	AudioServer.set_bus_mute(1, toggled_on)
	AudioServer.set_bus_mute(2, toggled_on)
	pass # Replace with function body.


func _on_resolutions_item_selected(index: int) -> void:
	match index:
		0:
			DisplayServer.window_set_size(Vector2i(750, 400))
			
		1:
			DisplayServer.window_set_size(Vector2i(1280, 720))
		2:
			DisplayServer.window_set_size(Vector2i(1600, 900))


func _on_close_pressed() -> void:
	get_tree().change_scene_to_file("res://Main Menu/Scenes/main_menu.tscn")
