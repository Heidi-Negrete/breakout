extends CharacterBody2D

@export var current_speed: int = 700
@export var MAX_SPEED: int = 2000
@export var acceleration: int = 150

func _ready():
	position.x = .10 * 1920
	position.y = .80 * 1080


func _physics_process(delta):
	if Input.is_action_pressed("move_right"):
		velocity.x += current_speed * acceleration * delta
	elif Input.is_action_pressed("move_left"):
		velocity.x -= current_speed * acceleration * delta
	else:
		velocity.x = 0
	velocity.x = clamp(velocity.x, -MAX_SPEED, MAX_SPEED)
	move_and_slide()
