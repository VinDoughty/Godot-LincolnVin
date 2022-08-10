extends Node
# There are 2 ways to write a key-value pair in a dictionary:
#		1) using a colon
#		2) using an equals sign

# When using colons, if a String is used as a key, it must be surrounded by quotes.
# When using an equals sign, String keys must NOT have quotes

var colon_dict := { # String keys must be surrounded by quotes
	"name": "Wizard",
	"health": 100,
	3: "example" # note: variable names cannot begin with a number, but dictionary keys can
}

var equals_dict := { # String keys must be NOT surrounded by quotes
	name = "Wizard",
	health = 100,
	colon_dict.size(): "example" # When a dot/period is used in a key, a COLON must be used.
}

# When using an equals sign, String keys LOOK like variable names, but they're not.
var health = 500 # this variable is NOT being used as a key in the equals_dict

func _ready() -> void:
	print(colon_dict) 	# {3:example, health:100, name:Wizard}
	print(equals_dict) 	# {3:example, health:100, name:Wizard}

# Regardless of which syntax you use, the dictionary data is the same, and prints with colons.

# ------------- OUTPUT -------------
#	{3:example, health:100, name:Wizard}
#	{3:example, health:100, name:Wizard}
# ----------------------------------
