extends Node2D

func _ready():
	$AudioStreamPlayer.pitch_scale = rand_range(0.70, 1.30)
	$Dust.one_shot = true
	$Debris.one_shot = true
	$AnimatedSprite.rotation_degrees = rand_range(0, 360)
	$AnimatedSprite.play("default")
