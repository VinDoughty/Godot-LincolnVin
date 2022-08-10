extends Node

# When we store the value of a variable into an array or dictionary, then change the variable,
# 		the value in the array/dictionary will not match the current value of the variable.

# The best solution to this problem is to use a dictionary INSTEAD of variables.
# If we only have 1 place in which the values are stored, they can't become outdated.

# We can create a dictionary that stores only string keys. These strings will "simulate" variable names.
const KEY := {			# This dict should be a const, because variable NAMES can't be changed.
	name = "name",
	health = "health",
	level = "level"				
}



# Now we can create a dictionary which will actually store the values.
var char_data := {
	KEY.name: "Wizard",			# We have to use colons in this dictionary, since we're using a '.' in the key
	KEY.health: 100,
	KEY.level: 9,
}

# Now we can get the values as we normally would, and there are no variable mismatches we have to worry about.
# Also, we now get autocompletion for all these "variable names" whenever we type 'char_data.'
# This is a great way to group and organize our data (as opposed to having separate variables).

func _ready() -> void:
	print(char_data.name)		# Wizard
	print(char_data.health)		# 100
	print(char_data.level)		# 9
	
# We'll discuss a solution to an easily-made mistake when setting dictionary values in the following lessons.
