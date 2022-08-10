extends Node
# The 'continue' keyword will make a loop jump to its next iteration (cycle) immediately
const E := {		# Dictionary of equipment names ("E" will stand for "Equipment")
	ARMOR = "Armor", SPELLBOOK = "Spellbook", SWORD = "Sword", RUNE = "Rune",
	SHIELD = "Shield", CLOAK = "Cloak", AMULET = "Amulet", SPEAR = "Spear"
}

const WIZARD_EQUIPPABLES := [E.SPELLBOOK, E.RUNE, E.CLOAK, E.AMULET]
const KNIGHT_EQUIPPABLES := [E.ARMOR, E.SWORD, E.SHIELD, E.SPEAR]

var loot := [E.SWORD, E.RUNE, E.SHIELD, E.AMULET]

func loop_without_continue() -> void:
	var __equippable_items_in_loot := []
	for __item in loot:
		if WIZARD_EQUIPPABLES.has(__item):
			__equippable_items_in_loot.append(__item)
	print("Equippable items in loot: ", __equippable_items_in_loot)

func loop_with_continue() -> void:
	var __equippable_items_in_loot := []
	for __item in loot:
		if !WIZARD_EQUIPPABLES.has(__item): 		# if we can't equip this item, go to the next loop iteration
			continue									
		__equippable_items_in_loot.append(__item)	# if we reach this line, then we CAN equip the item
	print("Equippable items in loot: ", __equippable_items_in_loot)

func _ready() -> void:
	loop_without_continue()		# Equippable items in loot: [Rune, Amulet]
	loop_with_continue()		# Equippable items in loot: [Rune, Amulet]

# Both of these functions gave us the same result.
# We could have added an 'else: continue' branch to 'loop_without_continue()' if we wanted to.
# In complex loops, the 'continue' keyword can help us visualize what the loop is doing, but isn't necessary,
#		since the loop will go to the next iteration once it reaches the end of its code block anyways.
