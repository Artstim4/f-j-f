#state.gd
class_name State
extends Node

var state_machine = null


func inner_input(event:InputEvent):
	pass

func inner_process(delta):
	pass

func inner_physics_process(delta):
	pass

func enter(msg: Dictionary={}):
	pass
	
func exit():
	pass
