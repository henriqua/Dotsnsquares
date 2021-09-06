extends KinematicBody2D


const ACCELERATION = 100
const MAX_SPEED = 40
const FRICTION = 500

var velocity = Vector2.ZERO

func _ready():
	$AnimatedSprite.play("Idle_Right")

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	input_vector = input_vector.normalized()
	
	if input_vector != Vector2.ZERO:
		velocity = velocity.move_toward(input_vector * MAX_SPEED, ACCELERATION * delta)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
	velocity = move_and_slide(velocity)
	if input_vector.x > 0:
		$AnimatedSprite.play("Walk_Right")
	elif input_vector.x < 0:
		$AnimatedSprite.play("Walk_Left")
	elif Input.is_action_just_released("ui_right"):
		$AnimatedSprite.play("Idle_Right")
	elif Input.is_action_just_released("ui_left"):
		$AnimatedSprite.play("Idle_Left")




func _on_Area2D_body_entered(body):
	queue_free()
