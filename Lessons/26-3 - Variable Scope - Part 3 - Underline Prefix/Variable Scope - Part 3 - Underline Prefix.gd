extends Node

var my_var := 0

func my_func() -> void:
	var __my_var := 5 # declaring a local variable with a __ prefix.
	# By naming our local variables with a prefix, such as __ (double underscore), we'll be able to
	#	easily tell whether a variable is a local or member variable just by looking at its name.

	my_var += 10 # modifying a member variable (No prefix in the name)
	__my_var += 10 # modifying a local variable (Variable name has a __ prefix)
	
	print("my_var: ", my_var)		# my_var: 10			(member var)
	print("__my_var: ", __my_var)	# __my_var: 15			(local var)

	# By giving our local variables a __ prefix, this will make Godot's autocomplete work much better for us.
	# While inside a function, when we type '__', Godot's autocomplete will only show us a list of all the 
	# 	local variables we've declared inside of that function.
	# If we didn't give a prefix to our local variables, we would have to look through all of the
	#	autocomplete suggestions until we find the variable name that we're looking for.
	
	# __ (double underscore) is a better choice for a local var prefix than _ (single underscore) for a few reasons:
	#	1. Godot's autocomplete will only make suggestions after we've typed 2 characters,
	#		so if we just type a single underscore, autocomplete will not suggest anything.
	#	2. GDScript does not support private variables or functions.
	#		(In other programming languages, private functions can only be called from within its own class.
	#			Other objects/classes cannot access the private functions of another object/class. 
	#			(The same applies to private variables)
	#		)
	
	#		In order to "simulate" private functions, we can prefix a function name with a single underscore,
	#			to let ourselves know that this function should never be called from another class/object.
	
	#		We can also simulate private MEMBER variables with a single underscore.
	#		By using __ only with LOCAL vars, we can differentiate them from "private" MEMBER vars, which use _.	
	
	#	3. We can use _ to prefix "helper" functions, which can be used to simplify code and reduce duplication.
	#		Helper functions will be discussed in the next lesson.

func _ready() -> void:
	my_func()

# ------------- OUTPUT -------------
#	my_var: 10
#	__my_var: 15
# ----------------------------------
