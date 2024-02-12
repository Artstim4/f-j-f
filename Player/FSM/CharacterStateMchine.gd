extends Node

class_name CharacterStateMachine

@export var curent_state:State

var states: Array[State]


func _ready():
	for child in get_children():
		if (child is State):
			states.append(child)
		else:
			push_warning("Child"+child.name+"is not a State for CharacterStateMachine")


func check_if_can_move():
	return curent_state.can_move



#
#@export var start_state: NodePath # справа в инспекторе путь создаёт
#@onready var state: State = get_node(start_state) # код state.gd добавляет в переменную  state
#
#
#func _ready():
	#for child in get_children():
		#child.state_machine = self
	#state.enter()

#
#func input(event):
	#state.inner_input(event)
	#
	#
#func _process(delta):
	#state.inner_process(delta)
	#
#func _physics_process(delta):
	#state.inner_physics_process(delta)
	#
	#
#func change_to(target_state:String,msg: Dictionary={}):
	#if not has_node(target_state):
		#print_debug("Нет такой ноды" + target_state) 
		#return
	#state.exit() # Убираем предыдущее состояние
	#state = get_node(target_state) # Назаначаем новое состояние 
	#state.enter(msg)  # хз пишем что всё работает , нахуя ? 
