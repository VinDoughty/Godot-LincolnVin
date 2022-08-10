extends Node
# A function is a "block" (section) of code that we can run by 'calling' or 'invoking' it.

# Godot has some built-in functions which are 'called' (executed) automatically.
# The '_ready()' function is one of those. It gets called when a 'node' has finished setting up.

# 'print()' is another built-in function in Godot.
# 		It will write text in Godot's 'Output' panel at the bottom of the editor.

# We can create our own functions just like we did with variables and constants.

var points: int = 20

func increase_points():
	points += 1
	print("points increased.")

func _ready():
	print(points)		# 20
	increase_points()
	print(points)		# 21
	increase_points()
	print(points)		# 22

# Notice how each line under the 'increase_points()' function and the '_ready()' function is indented.
# This indentation creates a "code block", which tells Godot which code is grouped together.
# This means that indendation actually has an effect on our code, and is not just a visual aid.

# Some languages use brackets ({}) to delineate where a code block begins and ends,
#	but in GDScript, code blocks are delineated using indentation (tabs).

# ------------- OUTPUT -------------
#	20
#	points increased.
#	21
#	points increased.
#	22
# ----------------------------------
