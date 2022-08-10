extends Node

# 'Helper functions' could mean various things, but one definition of a helper function is
#		a function which is used/called by 'non-helper' functions to simplify their logic.

# In other words, the non-helper function can offload its 'work' to the helper function.

# In the functions below, '_print_numbers_below()' is a helper function.
# 'print_even_numbers_below()' and 'print_odd_numbers_below()' let the helper function do all the work.
# This prevents us from having to duplicate the same or very similar code into both of those functions.

var my_number := 5

# Helper function - name prefixed with single underscore
func _print_numbers_below(__final_number: int, __printing_even: bool) -> void:
	var __number_type := "even" if __printing_even else "odd" # ternary if-statement
	var __message := str("Every ", __number_type, " number below ",  __final_number)
	print(__message)
	
	var __printing_odd: bool = !__printing_even
	
	for __i in __final_number:
		var __i_is_even: bool = (__i % 2 == 0)
		var __i_is_odd: bool = (not __i_is_even)
		
		if __i_is_even and __printing_even:
			print(__i)
		elif __i_is_odd and __printing_odd:
			print(__i)

func print_even_numbers_below(__final_number: int) -> void:
	_print_numbers_below(__final_number, true)

func print_odd_numbers_below(__final_number: int) -> void:
	_print_numbers_below(__final_number, false)

# Built-in 'virtual' functions in Godot also start with a single underscore.
# Virtual functions are functions that are meant to be overridden in 'child classes'.
# Child classes (inheritance) will be discussed in lesson '33-1 - Objects and Classes'
func _ready() -> void:
	print_even_numbers_below(my_number)
	print_odd_numbers_below(my_number)

# ------------- OUTPUT -------------
#	Every even number below 5
#	0
#	2
#	4
#	Every odd number below 5
#	1
#	3
# ----------------------------------
