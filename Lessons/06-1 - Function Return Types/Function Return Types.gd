extends Node
# Functions can have their arguments and/or return values be statically typed.
# This way, the function will only be allowed to accept and/or return a value of the specified type(s).

# The return type can be statically typed by using an arrow (->) followed by the data type
# The returned value must match the data type specified, or Godot will give us an error.

func dynamically_typed_argument_and_return_value_func(argument):
#	Any argument type will be accepted, and the same data type will be returned.
	return argument

func statically_typed_return_value_func(argument) -> int:
#	Any argument type will be accepted, but the function MUST return an integer.
	return 777

func statically_typed_argument_and_return_value_func(argument: String) -> int:
#	ONLY a String argument will be accepted, and the function MUST return an integer.
	return 999

func get_number_squared(number: int) -> int:
#	The argument AND the returned value must be integers.
	var squared_number: int = (number * number)
	return squared_number

func _ready() -> void:
	print(dynamically_typed_argument_and_return_value_func(11))				# 11
	print(statically_typed_return_value_func(10))							# 777
#	print(statically_typed_argument_and_return_value_func(9)) # Error
	print(statically_typed_argument_and_return_value_func("a"))				# 999
#	print(get_number_squared("b")) # Error
	print(get_number_squared(8))											#64
	
# By default, Godot will not autocomplete the return type for built-in functions like '_ready()',
# but we can enable this feature under Editor-> Editor Settings -> Completion -> Add Type Hints.
