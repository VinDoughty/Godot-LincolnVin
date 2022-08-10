extends Node

const SCREEN_WIDTH := 1024	# (default)
const SCREEN_HEIGHT := 600	# (default)

const PLAYER_SIZE := Vector2(64, 64)

const WALL_WIDTH := 64
const WALL_SPEED := -20		# wall movement speed
const HOLE_HEIGHT := 200 	# height of gap between walls

var background := ColorRect.new()
var player := Player.new()
var top_wall := Wall.new()
var bottom_wall := Wall.new()
var walls := [top_wall, bottom_wall]

func initialize_walls() -> void: # set wall size and initial position
	for __i in walls.size():
		var __wall: Wall = walls[__i]
		__wall.rect_size.x = WALL_WIDTH
		__wall.rect_position.x = SCREEN_WIDTH + (WALL_WIDTH * 15) # move wall offscreen (right side)
		# multiplied WALL_WIDTH to give the player more time to react after running the game

func is_colliding() -> bool: # check if the player is colliding with either of the walls
	var __is_colliding := false
	for __i in walls.size():
		var __wall: Wall = walls[__i]
		var __player_rect := player.get_rect() # 'rect' is the rectangular area that the player takes up
		var __wall_rect := __wall.get_rect()
		if __player_rect.intersects(__wall_rect):
			__is_colliding = true
			break # Game is over. Don't need to check the second wall (if currently checking the first)
	return __is_colliding

func move_walls() -> void: # move walls toward the left edge of the screen, then reset position when offscreen
	var __position_reset := false
	
	for __i in walls.size():
		var __wall: Wall = walls[__i]
		if __wall.rect_position.x <= -WALL_WIDTH: # if wall offscreen (left side)
			__wall.rect_position.x = SCREEN_WIDTH + WALL_WIDTH # move wall offscreen (right side)
			__position_reset = true
		else:
			__wall.rect_position.x += WALL_SPEED # move wall left
	
	if __position_reset:
		change_hole_pos()

func change_hole_pos() -> void:
	randomize() # changes the seed of the random number generator
								# |-------------- N --------------|
	var __hole_y_top := randi() % (SCREEN_HEIGHT - HOLE_HEIGHT + 1) # random integer between 0 and (N - 1)
	var __hole_y_bottom := __hole_y_top + HOLE_HEIGHT
	top_wall.rect_size.y = __hole_y_top
	bottom_wall.rect_position.y = __hole_y_bottom
	bottom_wall.rect_size.y = (SCREEN_HEIGHT - __hole_y_bottom)

func _ready() -> void:
	initialize_walls()
	change_hole_pos()
	
	background.color = Color.black
	background.rect_size = Vector2(SCREEN_WIDTH, SCREEN_HEIGHT)
	
	player.rect_size = PLAYER_SIZE

	# add nodes to the Scene (SceneTree) as a child of this node. (the node with this script attached to it)
	add_child(background)
	add_child(player)
	add_child(top_wall)
	add_child(bottom_wall)


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"): # if 'Escape' key pressed
		get_tree().quit() # Quit game

var elapsed_time: float = 0.0

func _physics_process(delta: float) -> void:
	elapsed_time += delta
	move_walls()
	player.move()
	
	if is_colliding():
		set_physics_process(false) # pause physics/game
		print("Score: ", int(elapsed_time)) # converting elapsed_time to an int (rounded down)
		get_tree().quit() # Quit game
