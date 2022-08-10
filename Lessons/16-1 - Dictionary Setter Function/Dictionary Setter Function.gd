extends Node
# We want to create a 'setter' function that lets us set/change an EXISTING value in a dictionary.
# (We don't want it to let us use a dictionary key which doesn't exist in the dictionary,
#		because that would create a NEW entry (key-value pair) in the dictionary)
const KEY := {
	name = "name",
	health = "health",
	level = "level"
}

var char_data := {
	KEY.name: "Wizard",
	KEY.health: 100,
	KEY.level: 9
}

func set_char_data_value(key: String, new_value) -> void:
	assert(char_data.has(key), str("Invalid key: ", key)) 	# Asserting that the key already exists in the dictionary.
	char_data[key] = new_value								# If our assertion passed, this will change the 
															# 		existing value associated with the key.

func _ready() -> void:
	print(char_data)						# {health:100, level:9, name:Wizard}
	set_char_data_value(KEY.health, 500)	# Changing the existing "health" value
	print(char_data)						# {health:500, level:9, name:Wizard}
#	set_char_data_value("power", 17)		# This will cause an error.

# ------------- OUTPUT -------------
#	{health:100, level:9, name:Wizard}
#	{health:500, level:9, name:Wizard}
# ----------------------------------

# Now that we can safely change an EXISTING value in a dictionary, let's see how to 
#		safely CREATE a new key-value pair in the next lesson.
