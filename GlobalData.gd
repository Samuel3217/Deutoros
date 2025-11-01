extends Node

var best_times: Dictionary = {}
var save_path: String = "user://best_times.save"

func _ready() -> void:
	load_best_times()

func save_best_times() -> void:
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	if file:
		file.store_var(best_times)
		file.close()

func load_best_times() -> void:
	if FileAccess.file_exists(save_path):
		var file = FileAccess.open(save_path, FileAccess.READ)
		best_times = file.get_var()
		file.close()

func save_time_if_better(level_name: String, new_time: float) -> void:
	if not best_times.has(level_name) or new_time < best_times[level_name]:
		best_times[level_name] = new_time
		save_best_times()
