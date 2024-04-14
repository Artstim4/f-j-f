extends Node

class_name State

@export var can_move: bool = true

var character: CharacterBody2D
var next_state: State

func state_input(event:InputEvent):
	pass
#
#func inner_process(delta:float):
	#pass
#
#func inner_physics_process(delta:float):
	#pass
#
func enter():
	pass
	
func exit():
	pass
