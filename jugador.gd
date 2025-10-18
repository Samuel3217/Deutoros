extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Animation.play("Avanzar")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var direccion = Input.get_vector("ui_down", "ui_left", "ui_right", "ui_up")
	velocity = direccion * 300
	move_and_slide()
