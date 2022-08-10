extends Node
# You might be wondering: "What's the point asserting that an expression is false?"
# This is actually a lot more useful than it may immediately seem.

# For example, we can assert that an element is NOT already in an array before we add it.
# This will make sure that we never have a duplicate value in an array.

# A false assertion can also be useful for dictionaries.
# Say we want to add a new entry (key-value pair) to a dictionary:
# If the key we want to use already exists in the dictionary, then we would be accidentally
#		changing an existing entry (instead of making a new one).
# We can use an assertion to make sure that the key ISN'T already in the dictionary before we do this.


# Also, some functions that return an integer will return a -1 to signal that something went wrong.
# To make sure everything went OK, we can simply assert that the returned integer is NOT -1.

# In other cases, it may simply be easier to check if an expression is false instead of true.
# For example, you may have a variable with a default value which you intend to change later.
# At some point later in your code, you can use an assertion to make sure that the variable
#		does NOT still have its default value (because if it does, it means you forgot to change it).

# These are just a few examples of why you might want to use a false assertion.
