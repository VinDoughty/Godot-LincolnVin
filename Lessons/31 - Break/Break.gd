extends Node 

# Sometimes we want to stop a loop early.
# For example, when picking up items in a loop, we need to stop the loop when our inventory becomes full.
# We can use the 'break' keyword to 'break out' of the loop we're currently in. (This will stop/exit the loop)

const MAX_INVENTORY_SIZE = 4
var inventory := []
var loot := ["Armor", "Spellbook", "Sword", "Rune", "Shield", "Cloak", "Amulet", "Spear"]

func print_inventory() -> void:
	print("inventory: ", inventory)

func pick_up_loot_using_break() -> void:
	for __index in 1000: # the break statement will prevent this loop from actually running 1000 times
		if inventory.size() == MAX_INVENTORY_SIZE:
			print("Inventory full. Exiting loop.")
			break									# exits the loop
		else:
			inventory.append(loot.front())
			loot.pop_front()						# .pop_front() actually removes AND returns the first element,
	print_inventory()								#		so we could have combined those last 2 lines.

func pick_up_loot_without_using_break() -> void:
	for __index in MAX_INVENTORY_SIZE:
		if inventory.size() < MAX_INVENTORY_SIZE:
			inventory.append(loot.pop_front())		# Using the return value of .pop_front()	(compare to above)
	print_inventory()

func _ready() -> void:
	pick_up_loot_using_break()				# Inventory full. Exiting loop.
											# inventory: [Armor, Spellbook, Sword, Rune]
											
	inventory.clear()						# (Clearing the inventory array so we can pick up items again.)
	print_inventory()						# inventory: []
	
	pick_up_loot_without_using_break()		# inventory: [Shield, Cloak, Amulet, Spear]

# While we were able to accomplish the same end goal with or without using the 'break' keyword:
#	1) Without the break keyword, the loop will continue until it's complete (this could be slow if it's a huge loop)
#	2) The 'break' keyword can help you visualize what the loop is doing and how it works
#	3) We could have removed the 'else' line, and unindented its code block.
#			This would have allowed us to have one less indention level (useful if already heavily indented)
#	4) We could have added an 'else: break' in 'pick_up_loot_without_using_break()' if we wanted to.
