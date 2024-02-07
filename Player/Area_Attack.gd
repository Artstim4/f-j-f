extends Area2D

func _on_body_entered(body):
	if State.state_machine == "Idle":
		body.hp -= 10
	
