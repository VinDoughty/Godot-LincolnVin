extends Node

# -------- Constants are values which CAN'T be changed --------

# Godot naming convention:
#		- Constants are named using capital letters
#		- Variables are named using lowercase letters

const NAME = "Wizard"
const ID = 1
const BIRTHDAY = "January 1st, 1901"

func _ready():
	print("NAME: ", NAME)
	print("ID: ", ID)
	print("BIRTHDAY: ", BIRTHDAY)

#	(Trying to change the value of a constant (like below) will give us an error)
#	ID = 2

# ------------- OUTPUT -------------
#	NAME: Wizard
#	ID: 1
#	BIRTHDAY: January 1st, 1901
# ----------------------------------

