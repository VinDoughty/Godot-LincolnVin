extends Node
# Let's look at some Dictionary functions that will make our lives easier.
# (see the Dictionary class documentation for more info) (search 'dictionary' in the 'Search Help' popup window)
var my_dict := {
	name = "Wizard",
	health = 100,
	offense = 20,
}

func _ready() -> void:
	print(my_dict)					# {health:100, name:Wizard, offense:20}
	print(my_dict.size())			# 3 (the number of key-value pairs)
	print(my_dict.keys())			# [name, health, offense]					(array of keys)
	print(my_dict.values())			# [Wizard, 100, 20]							(array of values)
	print(my_dict.has("health"))	# True 										(the dictionary has a "health" KEY)
	print(my_dict.has("health"))
	my_dict.erase("health")			# (erases the "health" key-value pair)
	print(my_dict)					# {name:Wizard, offense:20} 				("health" entry was removed)
	print(my_dict.keys())			# [name, offense]
	print(my_dict.values())			# [Wizard, 20]
	my_dict.clear()					# (clears the dictionary) 					(erases all key-value pairs)
	print(my_dict)					# {}										(dictionary is now empty)
	print(my_dict.empty())			# True 										(returns true if empty)
	print(my_dict.size())			# 0 										(0 key-value pairs in the dictionary)

