extends State

class_name IdleState


#extends StatePlayer
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
