extends Node
# As you know, arrays store a list of values called 'elements'.
# Each of these elements has an associated 'index'.
# The 'index' tells us each element's offset (distance) from the beginning of the array.

const LETTERS := ["A", "B", "C"]

# The elements in this array have the following indexes:
# _________________
#| Element | Index |
#|---------|-------|
#| A       | 0     |
#| B       | 1     |
#| C       | 2     |
# -----------------

# The first element in the array is the String "A".
# Since "A" is at the beginning of the array, the distance from "A" to the beginning of the array is 0.
#		(no distance)

# This 0-based indexing comes from 'pointers', which reference the location of values stored in computer memory.
# When we created the 'LETTERS' array, each element's value needed to be saved in the computer's memory.
# The computer will save these elements in memory all right next to each other, starting with the first element.
# A pointer will reference (point to) the location where the FIRST array element ("A") was saved.

# By knowing the memory location of the first element, we can retrieve the other elements by telling the computer
#		how far away to look from the starting location.
# ("B" is located 1 'step' away from "A", and "C" is located 2 'steps' away from "A".)

# Now you know why array indexes start at 0 instead of 1.
