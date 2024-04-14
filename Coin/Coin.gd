extends Area2D


func _on_body_entered(body):
	if body.name == "Player":
		#print(player)
		#player.coins += 1
		queue_free()
