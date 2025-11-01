extends CharacterBody2D

# Variables configurables
var gravity_strength: float = 1500.0   # fuerza de gravedad
var gravity_direction: int = 1         # 1 = abajo, -1 = arriba
var base_speed: float = 1000.0          # velocidad inicial
var acceleration: float = 60.0         # aceleración
var max_speed: float = 1000.0           # velocidad máxima

func _ready() -> void:
	# Comienza con la animación de gravedad normal
	$AnimationPlayer.play("Gravedad_Abajo")

func _physics_process(delta: float) -> void:
	# --- Cambiar gravedad al presionar una tecla ---
	if Input.is_action_just_pressed("ui_up"):
		gravity_direction = -1
		$AnimationPlayer2.play("Gravedad_Arriba")
	elif Input.is_action_just_pressed("ui_down"):
		gravity_direction = 1
		$AnimationPlayer2.play("Gravedad_Abajo")

	# --- Aplicar gravedad ---
	velocity.y += gravity_strength * gravity_direction * delta

	# --- Movimiento constante hacia la derecha ---
	base_speed = min(base_speed + acceleration * delta, max_speed)
	velocity.x = base_speed

	# --- Mover personaje ---
	move_and_slide()
