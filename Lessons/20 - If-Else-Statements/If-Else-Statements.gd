extends Node
# To recap, the if-statement's code block will only execute if its expression is true.
# But what if we want X to happen if the if-statement is true, and Y to happen if it's false?
# This is what the 'else' keyword is for.

# We can put an 'else' block in our if-statement, to turn it into an 'if-else-statement'.
var health := 20
var damage_amount := 8

func damage_player() -> void:
	health -= damage_amount
	print("You took ", damage_amount, " damage.", " (health: ", health, ")")
	
	if health <= 0:
		print("(Dead)")		# this line will execute only if the if-statement is TRUE
	else:
		print("(Alive)")	# this line will execute only if the if-statement is FALSE

func _ready() -> void:
	damage_player()			# You took 8 damage. (health: 12)
							# (Alive)

	damage_player()			# You took 8 damage. (health: 4)
							# (Alive)

	damage_player()			# You took 8 damage. (health: -4)
							# (Dead)

# In the next lesson, we'll learn how to make a more complex if-statement.
