extends Node

# Eventually, we'll want to compare 2 values.
# For example, to check if our character is alive, we can compare his health to 0.

# If his health is greater than 0, that means he's alive.
# Otherwise, he must be dead.

# Here are the comparison operators we can use to compare 2 values:
#	< 		(less than)
#	> 		(greater than)
#	== 		(equal to)					*** Be careful here. ('=' and '==' do different things)
#	!= 		(not equal to)
#	>= 		(greater than or equal to)
#	<= 		(less than or equal to)

var health := 20

func _ready() -> void:
	print(health < 0)		# False
	print(health > 0)		# True
	print(health == 0)		# False							'==' is the equality operator
#	print(health = 0)		# (Error: Unexpected assign)	'=' is the assignment operator
	print(health != 0)		# True
	print(health >= 0)		# True
	print(health <= 0)		# False

