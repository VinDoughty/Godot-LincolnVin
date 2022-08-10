extends Node
# Let's look at some more built-in array class functions.
# (You can find these in the Array class documentation by searching for 'array' in the 'Search Help' popup window)
var my_array := ["A", "B", "C"]

func _ready() -> void:
	print(my_array)						# prints: [A, B, C]
	my_array.erase("B")					# removes element "B" from the array
	print(my_array)						# [A, C]
	my_array.clear()					# clears the array (makes it empty, with no elements)
	print(my_array)						# prints: []
	print(my_array.empty())				# prints: True (The array is empty)
	my_array.append("E")				# adds element "E" to the back of the array 			[E]
	my_array.append("F")				# adds element "F" to the back of the array				[E, F]
	my_array.append("G")				# adds element "G" to the back of the array				[E, F, G]
	my_array.insert(0, "D") 			# adds element "D" at index 0 (the front of the array)	[D, E, F, G]
	print(my_array)						# prints: [D, E, F, G]
	my_array.pop_back()					# removes and returns last element of the array			[D, E, F]
	my_array.pop_front()				# removes and returns the first element of the array	[E, F]
	print(my_array)						# prints: [E, F]
	my_array += ["H", "I", "J", "K"]	# appends 4 elements to the array
	print(my_array)						# prints: [E, F, H, I, J, K]
	my_array.invert()					# reverses the order of the array elements
	print(my_array)						# prints: [K, J, I, H, F, E]
	print(my_array.min())				# prints: E (smallest element value)
	print(my_array.max())				# prints: K (largest element value)
	my_array.push_front("A")			# same as: my_array.insert(0, "A")		[A, K, J, I, H, F, E]
	my_array.push_back("B") 			# same as: my_array.append("B")			[A, K, J, I, H, F, E, B]
	my_array += ["C", "C", "C"]			# appends 3 elements to the array		[A, K, J, I, H, F, E, B, C, C, C]
	print(my_array)						# prints: 								[A, K, J, I, H, F, E, B, C, C, C]
	my_array.sort()						# sorts the elements of the array		[A, B, C, C, C, E, F, H, I, J, K]
	print(my_array)						# prints: 								[A, B, C, C, C, E, F, H, I, J, K]
	print(my_array.slice(0, 4))			# (prints elements from index 0-4)		[A, B, C, C, C]
	print(my_array.find("C"))			# (prints index of first "C" element)	2
	print(my_array.rfind("C"))			# (prints index of last "C" element)	4
