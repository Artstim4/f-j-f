extends StatePlayer


func inner_physics_process(delta):
	#if Input.is_action_just_pressed("up") or Input.is_action_just_pressed("down") or Input.is_action_just_pressed("left") or Input.is_action_just_pressed("right"):
		#state_machine.change_to("Run")
	player.animation.play("attack")
	print(name)


func _on_animated_sprite_2d_animation_finished():
	state_machine.change_to("Run")
