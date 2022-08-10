extends Node

# Let's review the 3 methods we can use to GET a value from a dictionary.

var char_info := {
	name = "Wizard",
	health = 100,
	level = 9,
}

var char_name: String = char_info["name"]				# method 1
var char_health: int = char_info.health					# method 2
var char_level: int = char_info.values()[2]				# method 3

# To SET a value, we can use the syntax from methods 1 and 2, but not method 3.
func _ready() -> void:
	print(char_info)									# {health:100, level:9, name:Wizard}
	
	char_info["name"] = "Knight"						# method 1
	char_info.health = 120								# method 2
	char_info.values()[2] = 13							# method 3 (This doesn't work)
	print(char_info)									# {health:120, level:9, name:Knight} ("level" value unchanged)
	print(char_info.values())							# [Knight, 120, 9]

#	Method 3 will not work as a setter, because what we're actually doing is setting
#			an element in a duplicate array that the values() function created and returned.
#			We're not changing the actual value in the dictionary itself.
	var duplicate_values := char_info.values()			# .values() returns a unique, duplicate array
	duplicate_values[2] = 77							# setting a value in the duplicate array only
	print(duplicate_values)								# [Knight, 120, 77] (duplicate values)
	print(char_info.values())							# [Knight, 120, 9] (original values) (unchanged)
