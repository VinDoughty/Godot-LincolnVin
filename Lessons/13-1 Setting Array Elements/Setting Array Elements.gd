extends Node
# To set (change) the value of a specific element in an array, we do same thing
#		we did to get the value, but then write an equals sign followed by the new value
var my_array := ["dog", "fish", "cat"]

func _ready() -> void:
	print(my_array) 									#	[dog, fish, cat]
	my_array[0] = "snake"								#	(set the value of the element at index 0 to "snake")
	print(my_array)										#	[snake, fish, cat]
#	We can do this using a for-loop as well.
	for index in my_array.size():						#	Saving the index in the iterator variable
		my_array[index] = "duck"						# 	(setting every element in the array to "duck")

	print(my_array)										#	[duck, duck, duck]

#	We can add values from one array to another using a loop
	var animal_names := ["frog", "mouse", "bird"]		#	Creating a new array

	for animal_name in animal_names:					#	Saving the new animal names in the iterator variable
		my_array.append(animal_name)					#	Adding the new animal names to 'my_array'

	print(my_array)										#	[duck, duck, duck, frog, mouse, bird]
	var food_names := ["pizza", "cake", "cookies"]

	for index in food_names.size():						#	Saving the index in the iterator variable
		var food_name: String = food_names[index]		#	Getting the 'food_names' element
		my_array[index] = food_name						#	Setting the first 3 'my_array' elements

	print(my_array)										#	[pizza, cake, cookies, frog, mouse, bird]

	# We can also use the += operator to concatenate (join) two arrays together
	var thing_names := ["book", "tree"]					#	Creating a new array
	my_array += thing_names								#	Addings all elements from 'thing_names' into 'my_array'
	print(my_array)										# 	[pizza, cake, cookies, frog, mouse, bird, book, tree]
