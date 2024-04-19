extends Node2D

@export var next_scene : String

func _on_go_to_next_scene_body_entered(body) -> void:
	if body.name == "Player":
		get_tree().change_scene_to_file(next_scene)
