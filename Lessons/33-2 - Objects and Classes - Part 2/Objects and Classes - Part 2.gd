extends Node 

# In the last lesson, we created a 'Dog' class, and then instantiated a new 'Dog' object.
# We were able to do this because GDScript (Godot's scripting language) is an
#		Object-Oriented Programming language (OOP).

# Objects are like 'containers' that we can fill with related functions and properties (variables and constants).
# Godot makes heavy use of objects in the form of 'nodes'.
# A hierachy (collection/group) of nodes is called a 'scene' in Godot.

# Each script we've been looking at so far has been attached to a 'Node' object.
# By attaching scripts to nodes, we can give them additional functions and properties.
# The 'extends Node' at the top of this script means that this script 'inherits from' the 'Node' class.
# In other words, this script has access to all the functions and properties in the Node class.

# The _ready() function you've been seeing over and over is a built-in function in the 'Node' class.
# Because our scripts have all extended (inherited from) the Node class, they have access to that _ready() function.
# When a class extends another class, this is called 'inheritance'.

# The 'child' class has access to all the functions and properties of the 'parent' class,
#		(but the parent class does NOT have access to the functions and properties of the child class)

# Let's see an example of this using our 'Dog' class.

class Dog:						# Creating a 'Dog' class
	func _do_trick() -> void: # virtual function. ('_' prefix) Intended to be overridden in child class.
		print("*spun around*")

	func bark() -> void:
		print("woof!")


class Poodle:					# Creating a 'Poodle' class
	extends Dog					# Extending (inheriting from) the 'Dog' class
	
	func _do_trick() -> void: # overriding the _do_trick() function of the 'Dog' class
		print("*played dead*")
		
	func bark()	-> void: # overriding the bark() function of the 'Dog' class ('_' prefix not required)
		.bark() # parent class function can be called with .FUNC_NAME
		print("WOOF!")
		
	func roll_over() -> void:
		print("*rolled over*")

func _ready() -> void:
	var Daisy := Poodle.new()
	Daisy.bark()				# woof!
								# WOOF!
	Daisy._do_trick()			# *played dead*
	Daisy.roll_over()			# *rolled over*

	var Rex := Dog.new()
	Rex._do_trick()				# *spun around*
	Rex.bark()					# woof! 
	Rex.roll_over()				# Error. 'roll_over()' doesn't exist in the 'Dog' class.

# 'Poodle' is a 'subclass' or 'child class' of the 'Dog' class.
# Because the 'Poodle' class inherits from the 'Dog' class, it has access to the 'bark()' and '_do_trick()'
#		functions of the 'Dog' class.

# Technically, in Godot, all functions are 'virtual'. They can be overridden by a child class.
# 		That's why we were able to override the 'bark()' function in the 'Poodle' class.
# 		The underscore prefix is not required to make a function virtual (able to be overridden).
#		It only serves as a visual aid to let the programmer know which functions are *intended* to overridden.

# When we override a function, we can do so in a way that *adds* behavior to the parent function, 
#		instead of totally *replacing* it. We did this when we overrode the 'bark()' function.

# We called the parent 'bark()' function using '.bark()', and then just added a new print statement after it.
# But when we overrode '_do_trick()', we completely replaced the original function behavior of the parent class.

# Using underscore prefixes for virtual functions is entirely optional.
# If naming virtual functions with prefixes makes you confuse them with helper functions, then feel free
# 		to name your virtual functions without the prefix.
