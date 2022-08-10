extends Node
# We can use 'nested if-statements' to add more complexity to our code.
# (A 'nested if-statement' is just an if-statement inside another if-statment.)
var enemy_health := 50
var enemy_offense := 20

var health := 70
var energy := 10
var offense := 30

var attack_cost := 8

func attack() -> void:
	if energy < attack_cost:
		print("You don't have enough energy to attack. ", "(Energy: ", energy, ")")
	else:
		energy -= attack_cost
		enemy_health -= offense
		print("You dealt ", offense, " damage to the enemy. ", "(Enemy Health: ", enemy_health, ")")

		if enemy_health <= 0:
			print("Enemy died.")
		else:
			health -= enemy_offense
			print("The enemy dealt ", enemy_offense, " damage to you. ", "(Health: ", health, ")")

			if health <= 0:
				print("You died.")
			else:
				print("--- Next turn ---")

func _ready() -> void:
	attack()		# You dealt 30 damage to the enemy. (Enemy Health: 20)
					# The enemy dealt 20 damage to you. (Health: 50)
					# --- Next turn ---

	attack()		# You don't have enough energy to attack. (Energy: 2)

