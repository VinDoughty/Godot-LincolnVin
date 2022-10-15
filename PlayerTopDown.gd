extends KinematicBody2D
class_name PlayerTopDown
var health = 12
export var max_health = 12
const speed = 400
const UP = Vector2(0, -1)
var motion = Vector2()

func _ready():
	health = max_health

func _physics_process(delta):
	$ProgressBar.value = health
	$ProgressBar.max_value = max_health
	if health==0:
		return
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
		$AnimationPlayer.play("wallk right")
		$Sprite.flip_h = false	
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
		$AnimationPlayer.play("wallk right")
		$Sprite.flip_h = true	
	elif Input.is_action_pressed("ui_down"):
		motion.y = speed
		$AnimationPlayer.play("walk down")	
	elif Input.is_action_pressed("ui_up"):
		motion.y = -speed
		$AnimationPlayer.play("walk up")		
	else:
		motion.x = 0
		motion.y = 0
		$AnimationPlayer.play("idle")
			
	move_and_slide(motion, UP)
			
			
			
func die():
	$AnimationPlayer.play("die")		



	# Replace with function body.
