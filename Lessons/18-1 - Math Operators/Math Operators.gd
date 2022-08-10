extends Node
# Throughout our program, we'll be frequently increasing, decreasing, multiplying, and dividing our variables.

# To do that, we need to know how to use these math operators.

#	+ 		(addition)
#	- 		(subtraction)
#	* 		(multiplication)
#	/		(division)

var health := 20

# If we want to increase our health variable, we could do:
#		health = health + 10

# In other words, we're saying:
#		(new_health_value) = (current_health_value) + 10

# But this is a bit strange looking, and overly verbose.
# We can assign a new value to the variable by sticking the '=' sign directly after the math operator.
# Then we don't need to write the variable name a second time.

# So instead, we could simply do this:
func _ready() -> void:
	print(health)		# 20
	health += 10		# increase health by 10
	print(health)		# 30
	health -= 5			# decrease health by 5
	print(health)		# 25
	health /= 5			# divide health by 5
	print(health)		# 5
	health *= 10		# multiply health by 10
	print(health)		# 50

# There's actually one more math operator: the modulo operator (%)
# We won't use it very often, but it'll be useful in certain situations.
# We'll cover it in the next lesson.
