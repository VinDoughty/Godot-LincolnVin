extends Node
# If we want to make our loop run 'N' times, we can use a number as our iterable.

func my_number_loop() -> void:
	for number in 3:
		print(number)
		
# ------------- OUTPUT -------------
#	0
#	1
#	2
# ----------------------------------

# The loop printed out the iterator variable exactly 3 times.

# Note that the numbers printed were 0-2, not 1-3, as you might expect.
# The following functions will do the same thing as the function above.

func my_range_loop() -> void:
	for number in range(3):
		print(number)

func my_array_loop() -> void:
	for number in [0, 1, 2]:
		print(number)

# The 'range(N)' function return an array of numbers from 0 to (N - 1).
# The reason that the returned array begins with 0 will make sense once you
#		learn about array 'indexes' (in the next lesson).

func _ready() -> void:
	my_number_loop()
