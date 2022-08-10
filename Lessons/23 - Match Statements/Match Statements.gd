extends Node
# When we want to check if a value is equal to any of several possible values,
#		we can use a 'match' statement.

# A match statement will work the same way as the if-elif-else statement you saw before,
#		but the syntax will just be a little different.

const Weapon := {
	Sword = "Sword",
	Bow = "Bow",
	Staff = "Staff",
	Mace = "Mace",
	Fist = "Fist",
}

var equipped_weapon: String = Weapon.Sword

func attack_enemy() -> void:
	match equipped_weapon:									# (beginning of the 'match' statement)
		Weapon.Sword:										# (if equipped_weapon == Weapon.Sword:)
			print("You slashed the enemy.")
		Weapon.Bow:											# (elif equipped_weapon == Weapon.Bow:)
			print("You shot the enemy.")
		Weapon.Staff:										# (elif equipped_weapon == Weapon.Staff:)
			print("You threw a fireball at the enemy.")
		_:													# (else:) (the 'default' statement)
			print("You hit the enemy.")

func _ready() -> void:
	equipped_weapon = Weapon.Bow
	attack_enemy()						# You shot the enemy.

# A benefit of the match statement is that it's less verbose than the if-elif-else statement.
# We don't need to keep writing the variable's name and the '==' symbol to compare the values.
# However, what we can't do with match statements is check if a value is less than or greater than another.
# Match statements can only check if 2 values are equal. If we need to check if something is
#		less than or greater than something else, we need to use an if/elif/else statement instead.
