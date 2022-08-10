extends Node

# In Godot, 'Nodes' are objects that are stacked on top of each other to build a 'Scene'.
# A scene must have a 'root' node, which all other nodes in the 'SceneTree' are a 'child' of.

# Each node can have a script attached to it, which gives it additional behavior.
# (You are currently viewing a script, which is attached to a node.)

# Scripts are used to store data for nodes and give them behavior.

# The currently opened scene can be 'run' by pressing 'F6' or selecting the 'Play Scene' button
#		in the upper-right corner.

# With the 'Nodes Scenes and Scripts' scene focused, press 'F6' to run it.
# You should see 'Success' printed at the bottom of the screen (in the Output window)

# In the following lessons, you'll learn how to use Godot's scripting language, GDScript.
# By the end of this course, you'll have a working game made using only a few scripts.

func _ready():
	print("Success")
