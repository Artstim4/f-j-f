extends StatePlayer

func enter(_msg:Dictionary={}):
	pass
	
func inner_physics_process(delta):
	
	var input_direction = Input.get_vector("left", "right", "up", "down") # Бег
	var direction_x = Input.get_axis("left","right")
	var direction_y = Input.get_axis("up","down")
	var direction = Vector2(direction_x,direction_y).normalized()
	player.velocity = input_direction * player.speed
	player.move_and_slide() 
	
	if player.velocity == Vector2.ZERO:
		state_machine.change_to("Idle")
	if (direction.x < 0):
		player.animation.flip_h = true
	else:
		player.animation.flip_h = false
	player.animation.play("run")
	print(name)	
