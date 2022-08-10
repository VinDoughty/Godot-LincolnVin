extends Node
# Nested match statements work just like nested if-statements.

const Weapon := {
	Sword = "Sword",
	Bow = "Bow",
}

const Enemy := {
	Knight = "Knight",
	Dragon = "Dragon",
}

var equipped_weapon: String = Weapon.Sword
var current_enemy: String = Enemy.Dragon


func attack() -> void:
	match equipped_weapon:
		Weapon.Sword:
			match current_enemy:
				Enemy.Knight:
					print("You slashed the knight with your sword.")
				Enemy.Dragon:
					print("The dragon is flying! You can't hit it with a sword!")
		Weapon.Bow:
			match current_enemy:
				Enemy.Knight:
					print("The knight blocked your arrow with his shield.")
				Enemy.Dragon:
					print("You hit the dragon with your arrow.")


func _ready() -> void:
	attack()						# The dragon is flying! You can't hit it with a sword!
	equipped_weapon = Weapon.Bow
	attack()						# You hit the dragon with your arrow.
