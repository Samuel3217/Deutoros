extends Control




func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://mundo.tscn")
	



func _on_quit_pressed() -> void:
	get_tree().quit()



func _on_test_pressed() -> void:
	get_tree().change_scene_to_file("res://mundo_prueba.tscn")


func _on_tiempos_pressed() -> void:
	get_tree().change_scene_to_file("res://tabla_tiempos.tscn")
