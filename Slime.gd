class_name Slime
extends CharacterBody2D


const SPEED = 300.0
enum states{
	IDLE,
	RUN,
	ATTACK,
	DETH,
	GETHIT,
}

var curent_state = states.DETH
@onready var animation = $AnimatedSprite2D

func _physics_process(delta):
	match curent_state:
		states.IDLE:
			animation.play("idle")
			animation.hide()
		states.DETH:
			animation.play("deth")
	#move_and_slide()
