extends ColorRect # extending ColorRect class

class_name Player 	# Registering 'Player' as a new class/data type
					# This allows other classes to create/instantiate a new 'Player' object.
					# Example: 		var player := Player.new()

const GRAVITY = 1				# downwards velocity to add during each frame
const JUMP_FORCE = -13			# upwards velocity to add when Spacebar is pressed
const SCREEN_HEIGHT := 600		# (default)

var velocity := Vector2.ZERO	# positional change for each frame

func move() -> void:
	if Input.is_action_just_pressed("ui_accept"): # If pressing Spacebar
		velocity.y = JUMP_FORCE

	velocity.y += GRAVITY
	rect_position += velocity

	if rect_position.y < 0:
		rect_position.y = 0 # prevent moving above screen

	var __max_y = (SCREEN_HEIGHT - rect_size.y)

	if rect_position.y > __max_y:
		rect_position.y = __max_y  # prevent moving below screen

#	rect_position.y = clamp( (rect_position.y + velocity.y), 0, (SCREEN_HEIGHT - rect_size.y) )

func _ready() -> void:
	rect_position.x = 20 # move player away from left edge

#func _physics_process(delta): # runs every frame
#	move()
