extends Node

# When we want to loop through an array, there are 2 different things we can save in the iterator variable:
#		1) the element value
#		2) the element index

const WORDS := ["Hello", "Goodbye"]

func example_loop_1() -> void: # saving the element VALUE in the iterator
	for word in WORDS:
		print(word)
		
# ------------- OUTPUT -------------
#	Hello
#	Goodbye
# ----------------------------------

# If we store the element index in the iterator, we can still get the element located at that index.
# This way, we not only know what each element in the array is, but also where it's located.

func example_loop_2() -> void: # saving the element INDEX in the iterator
	for word_index in 2:
		var word: String = WORDS[word_index]
		print(word_index, ": ", word)
		
# ------------- OUTPUT -------------
#	0: Hello
#	1: Goodbye
# ----------------------------------

func _ready() -> void:
	example_loop_1()
	example_loop_2()
