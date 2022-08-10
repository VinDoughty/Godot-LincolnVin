extends Node

# -------- Variables are values which CAN be changed --------

var health = 100
var offense = 20
var defense = 7

func _ready():
	print("-------- old values ---------")
	print("health: ", health)
	print("offense: ", offense)
	print("defense: ", defense)

	health *= 2
	offense *= 2
	defense *= 2

	print("\n")
	print("-------- new values ---------")
	print("health: ", health)
	print("offense: ", offense)
	print("defense: ", defense)


# ------------- OUTPUT -------------
#	-------- old values ---------
#	health: 100
#	offense: 20
#	defense: 7
#
#
#	-------- new values ---------
#	health: 200
#	offense: 40
#	defense: 14
# ----------------------------------
