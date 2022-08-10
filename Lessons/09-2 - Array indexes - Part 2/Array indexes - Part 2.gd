extends Node

# We can access individual elements in an array by using those elements' indexes.

const LETTERS := ["A", "B", "C"]

func _ready() -> void:
	var letter_1 = LETTERS[0]
	var letter_2 = LETTERS[1]
	var letter_3 = LETTERS[2]

	print("letter_1: ", letter_1)		# 	letter_1: A
	print("letter_2: ", letter_2)		# 	letter_2: B
	print("letter_3: ", letter_3)		#	letter_3: C

#	We can do the same thing (even more easily) with a loop.
#	for index in 3:
	for index in 3:
		var letter = LETTERS[index]
		print("letter_", index + 1, ": ", letter) # adding 1 to index, because it starts at 0

# ------------- OUTPUT -------------
#	letter_1: A
#	letter_2: B
#	letter_3: C
#	letter_1: A
#	letter_2: B
#	letter_3: C
# ----------------------------------
