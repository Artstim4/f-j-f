extends State

class_name IdleState

@export var run_state:State

func state_input(event:InputEvent):
	if(event.is_action_pressed("down") or event.is_action_pressed("up")or event.is_action_pressed("left")or event.is_action_pressed("right")):
		next_state = run_state
		
#
#func enter(_msg:Dictionary={}):
	#player.velocity = Vector2.ZERO
	#
#func inner_physics_process(delta):
	#
	#if Input.is_action_just_pressed("up") or Input.is_action_just_pressed("down") or Input.is_action_just_pressed("left") or Input.is_action_just_pressed("right"):
		#state_machine.change_to("Run")
	#if Input.is_action_just_pressed("attack"):
		#state_machine.change_to("Attack")
	#player.animation.play("idle")
	#print(name)
