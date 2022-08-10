extends Node

# Assertions allow us to make sure that our code is doing exactly what we expect.
# Using the built-in 'assert()' function, we can create an error when something goes wrong.
# In this case, seeing an error is good, because it gives us a chance to fix the problem.
# If we didn't see an error, the bug could slip by unnoticed, making it hard to track down and fix.

# The assert() function will check if the argument expression is true or false.
# If the expression is true, the code will continue to run.
# If the expression is false, Godot will pause the program and show us an error message.

const WORDS := ["Hello", "Goodbye"]

func print_valid_word(word: String) -> void:
#		  |  expression  |		# An expression is a segment of code that is evaluated to produce a value
	assert(WORDS.has(word))		# The program halts if the expression is false, but continues if it's true
	assert(WORDS.has(word), str("Invalid word: ", word))
	# You can pass an error message argument to the assert() function, which will be printed to the debug window
	# str() is a built-in function that converts all arguments into a single string, then returns the string
	print(word)

func _ready() -> void:
	print_valid_word("Hello")		# Hello 						(the assert() expression is true)
	print_valid_word("Goodbye")		# Goodbye						(the assert() expression is true)
	print_valid_word("Hi")			# (Error: Assertion failed)		(the assert() expression is false)

# When an assertion fails, the Debugger will open so we can see where the error occurred.
# We'll also be shown a list of consecutive function calls that lead to the error, called a "stack trace".
# We can click on each line in the "Stack Frames" section to see a snapshot of our code
#		at the time of each function call.
# Clicking the most recent "stack frame" will highlight the line that generated the error.
# Once we've fixed whatever caused the error (a failed assertion in this case), we can run the game again
#		and make sure that we no longer get an error.
