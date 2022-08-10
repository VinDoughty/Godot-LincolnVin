extends Node

# When we set a value in a dictionary, if we use a key that isn't already in the
#		dictionary, a new key-value pair will be created.

# If we're trying to add a new entry in the dictionary, then this is the behavior we want.
# However, it's easy to do this by accident, which can result in a bug.
# Typos and incorrect capitalization in dictionary keys are 2 potential mistakes to watch out for.
# Luckily, we can avoid this problem by allowing autocomplete to give us the current dictionary keys.

const KEY := {
	name = "name",
	health = "health",
	level = "level"
}

var char_data := {
	KEY.name: "Wizard",
	KEY.health: 100,
	KEY.level: 9,
}

func _ready() -> void:
	print(char_data)			# {health:100, level:9, name:Wizard}
	char_data.health = 200		# (setting an existing value)
	print(char_data)			# {health:200, level:9, name:Wizard}
	char_data.Health = 300		# (accidentally created a new dictionary entry, "Health": 300)
	print(char_data)			# {Health:300, health:200, level:9, name:Wizard}
								# (We now have a "health" and "Health" key)

# In addition to using auto-complete, we can create functions with 'assertions' to prevent this mistake.
# Let's first learn what assertions are, and then we can make a function that safely sets our dictionary values.
