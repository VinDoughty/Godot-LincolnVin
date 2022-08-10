extends Node

# Here are some practical uses for the modulo operator:

func is_number_even(number: int) -> bool:
	var remainder: int = number % 2
	return (remainder == 0)		# if 'number' can be divided evenly by 2, the remainder will be 0

func is_perfectly_divisible(a: int, b: int) -> bool:
	var remainder: int = a % b
	return (remainder == 0)		# if 'a' can be divided evenly by 'b', the remainder will be 0

const LETTERS := ["A", "B", "C"]
var index := 0

func print_next_letter() -> void:
	print(LETTERS[index])
	index += 1 # Unwrapped index
	index = (index % LETTERS.size()) # Wrapped index. For 3-element array, keeps index between 0-2

func _ready() -> void:
	print(is_number_even(3))				# False
	print(is_number_even(4))				# True
	print(is_perfectly_divisible(10, 3))	# False
	print(is_perfectly_divisible(10, 2))	# True
	print_next_letter()						# A
	print_next_letter()						# B
	print_next_letter()						# C
	print_next_letter()						# A
