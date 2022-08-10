extends Node

# Loops allow us to repeat a section of code until a certain condition is met.
# A 'for loop' can be used to repeat the code a specific number of times.

var my_array := ["A", "B", "C", "D"]

func my_for_loop() -> void:
	for element in my_array:
		print(element)

# ------------- OUTPUT -------------
#	A
#	B
#	C
#	D
# ----------------------------------

# When looping through an array (as shown above), each array element is stored in a
#		temporary variable (which we named 'element').
#		(This temporary variable is called an 'iterator variable')

# We then printed the iterator variable during each loop iteration (step/cycle).

# The thing that a loop iterates over (steps through) is called the 'iterable'.
# In this example, the iterable was the array, 'my_array'.

func _ready() -> void:
	my_for_loop()




