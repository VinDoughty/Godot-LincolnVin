extends Node

# Functions can 'return' data back to whatever called/invoked them.
# The returned data can then be saved into a variable or passed to another
#		function as an argument.

# Functions that don't return any data are called 'void' functions.
# Functions that do return data are called 'non-void' functions.


func void_func():
	print("Entered void_func. Not returning anything.")
	
func non_void_func():
	print("Entered non_void_func. Returning a value.")
	return 345 # A return statement

func _ready():
	var void_func_return_value = void_func() # This variable is not assigned a value, so its value will be 'null'
	var non_void_func_return_value = non_void_func()
	print("void_func_return_value: ", void_func_return_value)
	print("non_void_func_return_value: ", non_void_func_return_value)

# ------------- OUTPUT -------------
#	Entered void_func. Not returning anything.
#	Entered non_void_func. Returning a value.
#	void_func_return_value: Null
#	non_void_func_return_value: 345
# ----------------------------------
	
