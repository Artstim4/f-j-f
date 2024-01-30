class_name StateMachine
extends Node

@export var start_state: NodePath # справа в инспекторе путь создаёт
@onready var state: State = get_node(start_state) # код state.gd добавляет в переменную  state


func _ready():
	for child in get_children():
		child.state_machine = self
	state.enter()


func input(event):
	state.inner_input(event)
	
	
func _process(delta):
	state.inner_process(delta)
	
func _physics_process(delta):
	state.inner_physics_process(delta)
