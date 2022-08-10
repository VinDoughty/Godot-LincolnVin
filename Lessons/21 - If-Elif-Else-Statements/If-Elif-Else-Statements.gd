extends Node
# We'll often have multiple specific conditions that we want to check.
# For example, when our character attacks, we want to give a description of what happened.
# The description will change depending on the kind of weapon we have equipped. (Sword, bow, staff, etc.)
# We can use the 'elif' (else-if) keyword to handle this.
const Weapon := {
	Sword = "Sword",
	Bow = "Bow",
	Staff = "Staff",
	Mace = "Mace",
	Fist = "Fist",
}

var equipped_weapon: String = Weapon.Sword # Dictionary value types can't be inferred, so we need to manually
											# declare the type if we want to use static typing here

func attack_enemy() -> void:
	if equipped_weapon == Weapon.Sword:
		print("You slashed the enemy.")
	elif equipped_weapon == Weapon.Bow:					# We can have as many 'elif' statements as we want
		print("You shot the enemy.")
	elif equipped_weapon == Weapon.Staff:				# (second 'elif' statement)
		print("You threw a fireball at the enemy.")
	else:												# We can only have 1 'else' statement (must be at the end)
		print("You hit the enemy.")						# If no 'if' or 'elif' statement is true,
														#		then the 'else' branch will execute

func _ready() -> void:
	attack_enemy()						# You slashed the enemy.				(if branch)
	equipped_weapon = Weapon.Bow
	attack_enemy()						# You shot the enemy.					(elif branch)
	equipped_weapon = Weapon.Staff
	attack_enemy()						# You threw a fireball at the enemy.	(elif branch)
	equipped_weapon = Weapon.Mace
	attack_enemy()						# You hit the enemy.					(else branch)
	equipped_weapon = Weapon.Fist
	attack_enemy()						# You hit the enemy.					(else branch)
# When the program does different things depending on a condition (as with if/elif/else statements),
#		this is called 'branching'. The code that gets executed in each case is called a 'branch'.
