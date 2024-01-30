extends CharacterBody2D
# чисто для переменых персонажа код
var hp = 100

@export var speed = 400
var direction = Vector2.ZERO


func movement():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	var direction_x = Input.get_axis("left","right")
	var direction_y = Input.get_axis("up","down")
	direction = Vector2(direction_x,direction_y).normalized()
	velocity = input_direction * speed
	
	
func _physics_process(delta):
	movement()
	move_and_slide()
	if direction == Vector2.ZERO:
		$AnimatedSprite2D.play("idle")
	if Input.is_action_just_pressed("attack"):
		$AnimatedSprite2D.play("attak")
	
