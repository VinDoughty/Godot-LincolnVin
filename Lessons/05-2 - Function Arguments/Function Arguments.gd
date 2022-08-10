extends Node
# It is possible to 'pass' data to a function when it is called/invoked.
# The function can then do something with the data it received.

# The data 'passed' to a function is called an 'argument'.
# Functions can assign a default argument value, which will be used if no argument is passed to it.


func print_number_squared(number): # Requires an integer/float argument
	print(number * number)

func print_default_or_passed_number_squared(number = 0): # 'number' assigned a default value of 0
	# 'number' will be 0 unless an argument is passed to this function
	print(number * number)

func _ready():
	print_number_squared(2)
	print_default_or_passed_number_squared() # No argument passed. Will use the default argument (0).
	print_default_or_passed_number_squared(5) # Argument passed. Will override the default argument.

# ------------- OUTPUT -------------
#	4
#	0
#	25
# ----------------------------------
