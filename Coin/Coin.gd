extends Area2D

func _on_body_entered(body):
	if body.name == "Player":
		Player.coins += 1
		queue_free()
