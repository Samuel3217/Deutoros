extends Control

@onready var mundo1_label = $VBoxContainer/mundo
@onready var mundo2_label = $VBoxContainer/mundo_2
@onready var mundo3_label = $VBoxContainer/mundo_3

func _ready():
	actualizar_tiempos()

func actualizar_tiempos():
	var tiempos = GlobalData.best_times

	mundo1_label.text = "Mundo 1: " + ("%.2f s" % tiempos["mundo_1"] if tiempos.has("mundo_1") else "Sin registro")
	mundo2_label.text = "Mundo 2: " + ("%.2f s" % tiempos["mundo_2"] if tiempos.has("mundo_2") else "Sin registro")
	mundo3_label.text = "Mundo 3: " + ("%.2f s" % tiempos["mundo_3"] if tiempos.has("mundo_3") else "Sin registro")
