extends Node # We've already discussed what classes are, but let's review.
# A class is a script file (like you're reading now), that defines functions, variables, and constants.
# An Array variable has access to all the functions in the Array class, like append(), clear(), erase(), etc.
# So far, we've covered only built-in data types, such as int, float, String, Array, and Dictionary.
# We can think of these data types as abstract concepts. They aren't physical, tangible things.
# For example, we can't hold an integer in our hand. A number is just an abstract idea that doesn't physically exist.
# Therefore, these data types are not objects.

# However, we CAN have data types that we can think of as concrete, physical things that we can 'touch', so to speak.
# Let's take a dog for example.
# A dog is a physical thing that we can touch. We can say that a dog is an object.
# A dog has certain things that it can do, such as walk, run, eat, sleep, and bark.
# In other words, it has functions that it can perform.
# Dogs also have properties, such as their size, age, weight, and breed.

# We can think of a 'class' as a 'classification' or description of something.
# For example, we can 'classify' both dogs and wolves as canines.	(They are a 'subclass' of the 'canine' class)
# We can 'classify' both cats and lions as felines.					(They are a 'subclass' of the 'feline' class)

# We could represent the concept of a dog by creating a 'Dog' class, like this:
class Dog:
	const BREED = "Golden Retriever"
	var weight = 65

	func bark() -> void:
		print("WOOF!")

# That 'Dog' class is still just an abstract 'description' or 'blueprint' of what a Dog object COULD be.
# If we want to turn it into a 'real', 'physical' animal, we can use the 'new()' function to create a new 'Dog' object.
func _ready() -> void:
	var Buddy := Dog.new()		# (Creating a new 'Dog' object) (A new 'instance' of the 'Dog' class)
	Buddy.bark()				# WOOF!
	print(Buddy.weight)			# 65

# When we use the 'new()' function after a class name, we create (instantiate) a new object.
# In other words, we turn an abstract concept/idea into a tangible thing that we can interact with.
# To summarize, a 'class' is the concept/idea/blueprint of a 'thing', and an 'object' is the physical 'thing' itself.
# An object is an 'instance' of a class.
