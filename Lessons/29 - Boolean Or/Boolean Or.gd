extends Node
# Remember that when using boolean 'and', BOTH expressions have to be true for the resulting boolean to be true.
# When using boolean 'or', only ONE of those expressions has to be true for the resulting boolean to be true.

# true and true = true
# true and false = false
# false and false = false

# true or true = true
# true or false = true
# false or false = false

var health := 50
var energy := 10

func check_boolean_expressions() -> void:
	if (health > 0) or (energy > 0):		# if (true) or (true):
		print("Expression 1 is true.")
	else:
		print("Expression 1 is false.")

	if (health > 0) or (energy > 30):		# if (true) or (false):
		print("Expression 2 is true.")
	else:
		print("Expression 2 is false.")
		
	if (health > 70) or (energy > 60):		# if (false) or (false):
		print("Expression 3 is true.")
	else:
		print("Expression 3 is false.")

func _ready() -> void:
	check_boolean_expressions()
# ------------- OUTPUT -------------
#	Expression 1 is true.
#	Expression 2 is true.
#	Expression 3 is false.
# ----------------------------------

