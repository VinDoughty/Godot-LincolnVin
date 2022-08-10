extends Node

# Godot's scriping language, GDScript, is a 'dynamically typed' language.
# This means that variables in GDScript can change what data types they store.

# A programming language is said to be 'statically typed' if the data types stored in a variable CANNOT be changed.

# Dynamic typing is flexible, but can cause bugs if you accidentally change a variable's data type.
# GDScript allows you to statically type a variable when it is created.
# Static typing should be used unless you don't know what kind of data a variable will need to store in the future.

var my_dynamic_var = 1 # Intialized as an integer, but can still change its data type.
var my_static_var: int = 2 # Initialized as an integer, and CANNOT change its data type.

func _ready():
	my_dynamic_var = 0.54 # 'my_dynamic_var' is now a float
	my_dynamic_var = "hello" # 'my_dynamic_var' is now a String
	my_dynamic_var = Color.blue # 'my_dynamic_var' is now a Color

	my_static_var = 10 # OK. Can be assigned to a new value of the same data type (int)
	my_static_var = 9.9 # OK. Float will be automatically converted into an int (9) (Godot will show a warning)

#	my_static_var = "goodbye" # Error.
#	my_static_var = Color.green # Error.
#	my_static_var = [1, 2, 3] # Error.
