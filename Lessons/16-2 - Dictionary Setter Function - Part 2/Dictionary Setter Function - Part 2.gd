extends Node
# We can create a function which safely adds a NEW entry to our dictionary by copying
#		the previous function we just made and simply putting a '!' (not) in our assertion.

const KEY := {
	name = "name",
	health = "health",
	level = "level",
	offense = "offense" # We'll use this new string  with our 'add_char_data_value' function.
}

var char_data := {
	KEY.name: "Wizard",
	KEY.health: 100,
	KEY.level: 9
	# 'offense' key purposely omitted. We'll add it with 'add_char_data_value()'
}

func set_char_data_value(key: String, value) -> void:
	assert(char_data.has(key), str("Key not in dict: ", key)) 	# (asserting that the dict already has this key)
	char_data[key] = value										# changing an EXISTING dictionary entry

func add_char_data_value(key: String, value) -> void:
	# Using the '!' (not) symbol (asserting that the dict does NOT already have this key)
	assert(!char_data.has(key), str("Key already in dict: ", key))
	char_data[key] = value				# adding a NEW dictionary entry

func _ready() -> void:
	print(char_data)					# {health:100, level:9, name:Wizard}
	set_char_data_value(KEY.health, 500)
	add_char_data_value(KEY.offense, 20)
	print(char_data)					# {health:500, level:9, name:Wizard, offense:20}

#	set_char_data_value("defense", 12)	# Error: failed assertion (No "defense" key in dict)
#	add_char_data_value("offense", 30)	# Error: failed assertion ("offense" key already in dict)

# ------------- OUTPUT -------------
#	{health:100, level:9, name:Wizard}
#	{health:500, level:9, name:Wizard, offense:20}
# ----------------------------------
