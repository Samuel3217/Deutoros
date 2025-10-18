extends Area2D


func _process(delta):
	pass

# Señal cuando algo entra en la zona
func _on_body_entered(body: Node2D) -> void:
	if body.name == "jefe":
		death()

func death():
	$AudioStreamPlayer2D.play()  # Reproduce el sonido
	# Esperamos un momento para que se escuche antes de reiniciar
	await get_tree().create_timer(0.5).timeout
	get_tree().reload_current_scene()  # Reinicia la escena
