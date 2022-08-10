extends Node
# The modulo operator (%) returns the division remainder of 2 numbers.
# Let's say we have a division equation like this:
#			6 / 3 = ?

# A long-division diagram for that equation would look like this:
#				 ?
#			   -----
#			3 )  6

# If we work out the equation, our diagram will look like this:

#				 2				(3 'fits inside of' 6 exactly 2 times)
#			   -----
#			3 )  6
#			   - 6
#			    ___
#				 0				(there is no remainder left over after dividing 6 by 3)

# The remainder left after this division (0) is what our modulo operator (%) returns. (6 % 3 = 0)
# If we have 2 numbers which can't be perfectly divided, then our modulo operation will not return 0.
#			5 / 2 = ?
#-------------------------------------------------------------------------------------------
#				 ?
#			   -----
#			2 )  5
#-------------------------------------------------------------------------------------------
#				 2.x			(2 'fits inside of' 5 twice, but we have a 1 left over)
#			   -----
#			2 )  5
#			   - 4
#			    ___
#				 1				(1 is the remainder)			(5 % 2 = 1)

func _ready() -> void:
	print(6 % 3)	# 0
	print(5 % 2)	# 1

