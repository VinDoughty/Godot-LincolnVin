extends Node
# An enum is a data type that allows us to create several integer constants at once.
# 'Enum' is an abbreviation for 'Enumeration' or 'Enumerated Type'.
# To understand it, let's use a dictionary as a reference point.

# const WeaponID := {SWORD = 0, BOW = 1, STAFF = 2}				# Naming convention is: PascalCase for enum names,
																	#		and uppercase for the keys.
# Using a dictionary like this is basically a shorter way to write:
#		const WEAPON_ID_SWORD = 0
#		const WEAPON_ID_BOW = 1
#		const WEAPON_ID_STAFF = 2

# With the dictionary, we didn't need to give each key the prefix 'WEAPON_ID_',
#		because the dict is already named 'WeaponID'.
# When we access one of the dictionary values, like 'WeaponID.SWORD', it's clear what we're looking at, because
#		the dictionary name and key are descriptive.

# By using the enum keyword, we can more easily create the same dictionary we made above.
enum WeaponID {SWORD, BOW, STAFF}	# (Creates a Dictionary with String keys and sequential integer values)

# We didn't have to specify the value for the dictionary keys. It automatically gave them 
#		sequential values starting from 0.
# The benefit of using an enum is that it prevents you from accidentally putting the same value 
#		in the dictionary twice.
func _ready() -> void:
	print(WeaponID)					# {BOW:1, STAFF:2, SWORD:0}		(printed alphabetically)
	print(WeaponID.keys())			# [SWORD, BOW, STAFF]
	print(WeaponID.values())		# [0, 1, 2]

# In this lesson, we created a 'named enum' (we gave our enum the name 'WeaponID')
# Creating a named enum is the same thing as creating a dictionary with sequential values.
# We can also create an 'unnamed' or 'anonymous' enum, which works differently.
# We'll look at the 'unnamed enum' in the next lesson.

