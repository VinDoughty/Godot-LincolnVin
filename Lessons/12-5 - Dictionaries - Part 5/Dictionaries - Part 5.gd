extends Node

# Now we're ready to use a for-loop with a dictionary.

var char_info := {
	name = "Wizard",
	health = 100,
	level = 9,
	offense = 20,
	defense = 7
}

func print_char_info_data_using_a_for_loop() -> void:
	for index in char_info.size(): # .size() returns the size of the dictionary (5)
		var key: String = char_info.keys()[index]
		var value = char_info.values()[index] # we can't use static typing here (value can be String or int)
		print(key, ": ", value)

# ------------- OUTPUT -------------
#	name: Wizard
#	health: 100
#	level: 9
#	offense: 20
#	defense: 7
# ----------------------------------

func _ready() -> void:
	print_char_info_data_using_a_for_loop()
	print(char_info)	# {defense:7, health:100, level:9, name:Wizard, offense:20}

# If we just printed the dictionary using 'print(char_info)', it would print it in one long line.
# This may be okay for small dictionaries, but for larger ones, we'd want to use a custom dictionary-printing func.
