extends Node2D

func _ready():
	$AudioStreamPlayer.pitch_scale = rand_range(0.70, 1.30)
	$Particles2D.one_shot = true
