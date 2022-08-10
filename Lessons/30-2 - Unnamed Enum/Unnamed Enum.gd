extends Node
# In the last lesson, we created a 'named enum', which generated a dictionary for us.
# Now we'll create an 'unnamed enum' (also known as an 'anonymous enum').
# Instead of it creating a dictionary for us, it will create separate integer constants.
# We can access these generated constants by just using their name (like regular variables/constants)

enum {WEAPON_ID_SWORD, WEAPON_ID_BOW, WEAPON_ID_STAFF}	# Unnamed enum
# same as:
#		const WEAPON_ID_SWORD = 0
#		const WEAPON_ID_BOW = 1
#		const WEAPON_ID_STAFF = 2

# Let's see a named enum again so you can see them side-by-side.
enum WeaponID {SWORD, BOW, STAFF}	# Named enum

func print_unnamed_enum_constants() -> void:
	# There is no dictionary for us to access. We can only access the individual constants
	print(WEAPON_ID_SWORD)
	print(WEAPON_ID_BOW)
	print(WEAPON_ID_STAFF)

func print_named_enum_constants() -> void:
	print(WeaponID) # We can access the generated dictionary
	print(WeaponID.SWORD)
	print(WeaponID.BOW)
	print(WeaponID.STAFF)

func _ready() -> void:
	print_unnamed_enum_constants()		# 0
										# 1
										# 2

	print_named_enum_constants()		# {BOW:1, STAFF:2, SWORD:0}		(prints alphabetically)
										# 0
										# 1
										# 2

# I recommend you always use a named enum, because the generated dictionary will be very useful.
