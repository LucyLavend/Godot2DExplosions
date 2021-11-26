extends Node2D

onready var meh_explosion = preload("res://Scenes/MehExplosion.tscn")
onready var cool_explosion = preload("res://Scenes/CoolExplosion.tscn")

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			var meh_inst = meh_explosion.instance()
			meh_inst.global_position = event.position
			add_child(meh_inst)
		if event.button_index == BUTTON_RIGHT and event.pressed:
			$Camera2D.shake(.3, 50, 7)
			var cool_inst = cool_explosion.instance()
			cool_inst.global_position = event.position
			add_child(cool_inst)
