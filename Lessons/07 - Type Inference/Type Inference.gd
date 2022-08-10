extends Node
# When statically typing a variable, Godot can infer (automatically figure out)
#		the data type that you're trying to use, if it is obvious.

# When Godot can infer the data type, we don't have to explicitly write it.

var my_var_A: int = 100
#	Declared data type. We explicitly told Godot that this variable is an int.

var my_var_B := 100
#	Inferred data type. Godot inferred that this variable is an int.
#	(Godot knows that 100 is an integer, so we don't need to tell it that.)

# We can also use type inference on default function arguments
func get_squared_number_or_zero(number := 0) -> int:
	return number * number

func _ready() -> void:
	var squared_number := get_squared_number_or_zero(5) # 'squared_number' is now statically typed as int
	
# 	Because the return value of 'get_squared_number_or_zero' is statically typed as an int,
#		we were able to statically type 'squared_number' as an int using type inference.

#	You can always explicitly state the type instead of letting Godot infer it,
#		if that makes the code clearer to you.

#	However, you'll get an error if you try to assign a value to a variable that doesn't match its type

#	Type inference allows you to write less redundant code (though possibly at the expense of clarity).

