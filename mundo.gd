extends Node2D

@export var level_name: String = "mundo" # cámbialo según el nivel
var elapsed_time: float = 0.0
var running: bool = false

func _ready() -> void:
	elapsed_time = 0.0
	running = true
	update_label()

func _process(delta: float) -> void:
	if running:
		elapsed_time += delta
		update_label()

func update_label() -> void:
	if has_node("Label"):
		$Label.text = "Tiempo: %.2f s" % elapsed_time

func stop_timer_and_save() -> void:
	if not running:
		return
	running = false
	GlobalData.save_time_if_better(level_name, elapsed_time)
