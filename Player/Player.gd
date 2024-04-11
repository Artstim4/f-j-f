class_name Player

extends CharacterBody2D
# чисто для переменых персонажа код
var hp = 100
var coins = 0
@export var speed = 100
@onready var sprite: Sprite2D = $Sprite2D
@onready var animation_tree = $AnimationTree
var direction = Vector2.ZERO

var animation_locked: bool = false


func ready():
	animation_tree.active = true
	
func update_animation():
	animation_tree.set("parameters/move/blend_position",direction.x)


func update_facing_direction():
	if direction.x > 0:
		sprite.flip_h = false
	else:
		sprite.flip_h = true
func movement():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	var direction_x = Input.get_axis("left","right")
	var direction_y = Input.get_axis("up","down")
	direction = Vector2(direction_x,direction_y).normalized()
	velocity = input_direction * speed
	

func _physics_process(delta):
	update_animation()
	update_facing_direction()
	movement()
	move_and_slide()
	if direction == Vector2.ZERO:
		$AnimatedSprite2D.play("idle")
	if Input.is_action_just_pressed("attack"):
		$AnimatedSprite2D.play("attak")
	#
