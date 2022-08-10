extends Node

# You've already seen how we can use indexes to access specific array elements. For example:

var my_letters := ["A", "B", "C"]
var a: String = my_letters[0]	# A
var b: String = my_letters[1]	# B
var c: String = my_letters[2]	# C

# We have 3 ways of accessing the values in a dictionary. We can:
#		1) use the dictionary key inside square brackets
#		2) use a dot/period followed by a String key
#		3) get the array of dictionary values, then get the value we want using its index

var char_info := {
	name = "Wizard",
	health = 100,
	level = 9,
}

var char_name: String = char_info["name"]		# method 1
var char_health: int = char_info.health			# method 2
var char_level: int = char_info.values()[2]		# method 3

# Method 3 is useful when looping through a dictionary, which we'll do in the next lesson.

func _ready() -> void:
	print(char_name)	# Wizard
	print(char_health)	# 100
	print(char_level)	# 9
