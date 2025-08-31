extends Node

var total_sirens: int = 0

func siren_collected(value: int):
	total_sirens += value
	EventController.emit_signal("siren_collected", total_sirens)
