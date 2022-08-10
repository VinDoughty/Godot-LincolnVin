extends Node

# Dictionaries are incredibly useful. They're similar to arrays, so let's see
#		an array and a dictionary side-by-side.

var my_array := ["Wizard", 100, 20]

var my_dict := {
	name = "Wizard",
	health = 100,
	offense = 20,
}

# In the array, we have all the character's information, but it isn't clear
#		what the elements actually represent.

# However, because dictionaries use key-value pairs, we're able to immediately
#		understand what each of the values represents.

# Let's see how they both look when printed.

func _ready() -> void:
	print(my_array) # prints: [Wizard, 100, 20]
	print(my_dict)	# prints: {health:100, name:Wizard, offense:20}

# While the printed dictionary is easily understandable, it printed out the key-value pairs out of order.
# Dictionaries will print in alphabetical order, sorted by the keys (not in the originally created order).
# We'll fix this by creating a custom dictionary-printing function in a following lesson.
# But first, let's look at a few functions in the Dictionary class that will help us with that.

# ------------- OUTPUT -------------
#	[Wizard, 100, 20]
#	{health:100, name:Wizard, offense:20}
# ----------------------------------
