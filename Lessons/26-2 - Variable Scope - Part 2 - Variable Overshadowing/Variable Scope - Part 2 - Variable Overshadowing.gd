extends Node

var my_var := 1

func my_function() -> void:
	var my_var := 2 # We can declare a local variable with the same name as a member variable.
	# However, this is generally not a good idea, because it can make the code very confusing.
	# Creating a local var with the same name as a member var is called 'Variable Overshadowing'
	# Godot will give us a warning when we overshadow a member variable.
	print(my_var) # local var (2)
	
	# We can access an overshadowed member variable using the 'self' keyword.
	print(self.my_var) # member var (1)
	
	# We will often want to have a local var with a very similar name to a member var, but we don't want 
	#	them to have the EXACT SAME name, because then we would be overshadowing the member variable.
	
	# We'll look at a solution to this in the next lesson.	
	
func _ready() -> void:
	my_function()
	print(my_var) # member var (1)
	
# ------------- OUTPUT -------------
#	2
#	1
#	1
# ----------------------------------
	
