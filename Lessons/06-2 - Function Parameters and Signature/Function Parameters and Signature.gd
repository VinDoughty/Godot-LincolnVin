extends Node
# The data that we pass to a function is called an 'argument'.
# The type of data that a function expects to receive is called a 'parameter'.
# When we create a function, we give it parameters and a return type.

# A function's parameters and return type are collectively referred to as a function's 'signature'

#	| function name | function signature |
func get_squared_int(integer: int) -> int: # This function has an integer parameter and an integer return type.
	return integer * integer

#    |    name    |signature|
func print_message() -> void: # This function has no parameters, and doesn't return a value. (void function)
	print("Hello!")
	
	
# If a function parameter is statically typed, and you try to pass a different
#		data type argument to that function, Godot will show an error.

# For example, here is what the error message would say if I tried to pass a
#		String argument to the 'get_squared_int' function:
#	________________________________________________________
#		error: At "get_squared_int()" call, argument 1.
#				The passed argument's type (String) doesn't match the
#						function's expected argument type (int)
#	________________________________________________________

# Godot uses the phrase "expected argument type" instead of "parameter", but they mean the same thing.
# Just remember: 	A "parameter" is the data that a function EXPECTS to receive.
# 					An "argument" is the data that it ACTUALLY received. (That data passed to it when called)
# (Sometimes people will use 'argument' and 'parameter' interchangeably, so don't let that confuse you.)
