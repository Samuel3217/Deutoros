extends AudioStreamPlayer2D

func _ready():
	# Mover el nodo al root para que sea global y no se destruya al cambiar escenas
	get_tree().root.add_child(self)
	self.owner = null  # Desvincula de la escena actual
	play()  # Inicia la música automáticamente
