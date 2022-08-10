extends Node
# Because enums SHOULD BE constants with unique values, that makes them a perfect fit
#		for use with match statements.
# For example, if we know there are only a few possible options for something,
#		we can create an enum for those options.
# Then we can use a match statement to check what the currently selected option is.
# (We did this before when we checked which weapon we currently had equipped)

# The problem with enums is that because all of its values are integers, these integers
# aren't meaningful when we print them (when debugging, for example).

enum WeaponID {NONE = -1, SWORD, BOW, STAFF}

var equipped_weapon_ID: int = WeaponID.BOW

func print_equipped_weapon_ID_message() -> void:
	print("You used your ", equipped_weapon_ID, " on the enemy!")		# You used your 1 on the enemy!

# A nice solution to this is to just use a dictionary with string keys and string values instead.
# As long as we keep each string value unique, it can serve the same purpose as our enum.
# We also get the added benefit of having the dictionary values be useful for printing, and when we see the
# 		value in the debugger, it will be self-descriptive. (It won't just be a seemingly random number)

const WEAPON_NAME: Dictionary = {NONE = "None", SWORD = "Sword", BOW = "Bow", STAFF = "Staff"}

var equipped_weapon_name: String = WEAPON_NAME.BOW

func print_equipped_weapon_name_message() -> void:
	print("You used your ", equipped_weapon_name, " on the enemy!")	# You used your Bow on the enemy!

func _ready() -> void:
	print_equipped_weapon_ID_message()		# You used your 1 on the enemy!		(this doesn't make any sense)
	print_equipped_weapon_name_message()	# You used your Bow on the enemy!	(this makes perfect sense)

# Due to the clarity we get from using string dictionaries in this way, we'll continue using
#		them instead of enums whenever possible.
