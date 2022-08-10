extends Node

# It's important to be aware of a potential pitfall in using arrays and dictionaries: outdated values.
# If we save a variable into an array or dictionary, then we change the variable, the value in the
#		array/dictionary will not reflect that change.
# We would need to directly change the value inside the array/dictionary itself.

var health := 100
var level := 9

var char_stats_array := [health, level]			# saving the variables as array elements

var char_stats_dict:= {							# saving the variables as dictionary values
	"health": health,
	"level": level
}

func _ready() -> void:
	print(char_stats_array)						# [100, 9]
	print(char_stats_dict)						# {health:100, level:9}

	health *= 2									# doubling the 'health' variable
	level *= 2									# doubling the 'level' variable

	print(health)								# 200 ('health' variable was doubled)
	print(level)								# 18 ('level' variable was doubled)

	print(char_stats_array)						# [100, 9] (array elements were not doubled)
	print(char_stats_dict)						# {health:100, level:9} (dict values were not doubled)
	
# 	We'll discuss a solution to this problem in the next lesson.
	

