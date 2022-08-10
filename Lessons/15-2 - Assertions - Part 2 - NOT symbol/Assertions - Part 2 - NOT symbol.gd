extends Node

# Now that you know how to assert that an expression is true, you'll also want to
#		know how to assert that an expression is false.

# We can do this using the 'not' symbol: ! (Exclamation mark)
# The ! symbol will negate (return the opposite of) any boolean we put it in front of.
# (A boolean is either 'true' or 'false')

# Therefore:
#			!true = false
#			!false = true

# We can also use the actual word 'not' instead of the symbol
#			not true = false
#			not false = true

# Let's put it into practice now
const VALID_WORDS := ["Hello", "Goodbye"]
var word = "Hello"

func _ready() -> void:
	print(VALID_WORDS.has(word))		# True
	print(!VALID_WORDS.has(word))		# False	(We can use ! in front of an expression to negate the value)
	print(not VALID_WORDS.has(word))	# False	(We can use 'not' instead of '!')

	assert(VALID_WORDS.has(word))		# This assertion will pass
	assert(VALID_WORDS.has(word), str("Error: ", word))		# This assertion will fail
#	assert(not VALID_WORDS.has(word))	# This assertion will fail
