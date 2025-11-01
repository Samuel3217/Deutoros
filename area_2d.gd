extends Area2D

@export var next_scene_path: String

func _process(delta):
	pass

func _on_body_entered(body: Node2D) -> void:
	if body.name == "jefe":
		# Buscar el nivel actual y detener el cronómetro antes de cambiar escena
		var nivel = get_tree().get_current_scene()
		if nivel and nivel.has_method("stop_timer_and_save"):
			nivel.stop_timer_and_save()
		
		# Luego cambiar la escena como ya lo hacías
		change_scene()

func change_scene():
	get_tree().change_scene_to_file(next_scene_path)
