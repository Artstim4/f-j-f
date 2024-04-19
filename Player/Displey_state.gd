extends Label

@onready var state_machine: CharacterStateMachine

func _process(delta):
	text = "State:"+ state_machine.curent_state

