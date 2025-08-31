extends Node2D

@export var value: int = 1

#var sirensound = preload("res://siren-godot.mp3")

func _on_area_2d_body_entered(body):
	if body is CharacterBody2D:
		GameController.siren_collected(value)
		$siren_sound.play()
		await $siren_sound.finished
		self.queue_free()
		
