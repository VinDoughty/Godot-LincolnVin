extends Node
# Very often, we'll want to have certain things happen only under certain conditions.
# For example, whenever our character loses health, we need to check if they're still alive.
# If they're still alive, then we can continue playing the game.
# Otherwise, we need to show the Game Over screen.

# This is what if-statements are for.
# We can create an if-statement by using the 'if' keyword, followed by the expression that we want to evaluate.

var health := 20
var damage_amount := 8

func damage_player() -> void:
	health -= damage_amount
	print("You took ", damage_amount, " damage.", " (health: ", health, ")")

	if health <= 0:				# if the if-statement (expression) is true, the code block below it will execute.
		print("You died.")		# (first line of the if-statement's code block)
		print("Game Over.")		# (second line of the if-statement's code block)


func _ready() -> void:
	damage_player()		# You took 8 damage. (health: 12)
	damage_player()		# You took 8 damage. (health: 4)
	damage_player()		# You took 8 damage. (health: -4)
						# You died.
						# Game Over.

# We'll learn how to execute code when the if-statement (expression) is false in the next lesson.
