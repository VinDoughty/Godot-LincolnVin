extends Node
# You already learned about the boolean 'not' (!), which we can use to negate a boolean.
#		(!true = false) 	(!false = true)		(not true = false)		(not false = true)

# The boolean 'and' lets us check two boolean expressions at once.
# If BOTH of those expressions are true, the resulting boolean will be true.
# If EITHER of those expressions are false, the resulting boolean will be false.

# true and true = true
# true and false = false
# false and false = false

var health := 50
var energy := 10

func check_boolean_expressions() -> void:
	#  |------- expression --------|
	if (health > 0) and (energy > 0):		# if (true) and (true):
		print("Expression 1 is true.")
	else:
		print("Expression 1 is false.")

	if (health > 0) and (energy > 30):		# if (true) and (false):
		print("Expression 2 is true.")
	else:
		print("Expression 2 is false.")

	if (health > 70) and (energy > 60):		# if (false) and (false):
		print("Expression 3 is true.")
	else:
		print("Expression 3 is false.")

func _ready() -> void:
	check_boolean_expressions()
# ------------- OUTPUT -------------
#	Expression 1 is true.
#	Expression 2 is false.
#	Expression 3 is false.
# ----------------------------------

# You don't have to wrap each boolean expression with parentheses, but it makes the line easier to read.
# Compare:
#				if (health > 0) and (energy > 0):
# to:
#				if health > 0 and energy > 0:
