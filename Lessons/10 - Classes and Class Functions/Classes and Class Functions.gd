extends Node

# Each data type you've seen so far has a 'class' file associated with it.
# That class file is basically a script, like we've been creating over and over already.

# This is a script file.
# Just like we've been creating functions inside our scripts,
#		class files can have functions that the associated data type can use.

# You already learned about several data types: int, float, String, Array, Dictionary, bool, Vector2, and Vector3
# Each of these data types have a class file (script) of the same name.

# Let's see how to use the Array class functions with an array variable.
var my_array := ["A", "B", "C"]

func _ready() -> void:
	print(my_array.size()) # prints: 3			(the number of elements in the array)
	print(my_array.front()) # prints: A			(the first element in the array)
	print(my_array.back()) # prints: C			(the last element in the array)
	print(my_array.has("B")) # prints: True		(the array has an element with value "B")
	print(my_array.has("D")) # prints: False	(the array does NOT have an element with value "D")
	print(my_array.count("C")) # prints: 1		(the array has exactly 1 element with value "C")

# We were able to call functions in the Array class by writing a period after the Array variable's name,
#		followed by the name of the function we wanted to use.

# The size(), front(), and back() functions don't accept any arguments.
# The has() and count() functions both required an argument, so we passed a String argument when we called them.
# Each of these (non-void) functions returned a value, which we then printed.
